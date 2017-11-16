package edu.stanford.nlp.sempre.interactive;

import java.util.*;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;

import edu.stanford.nlp.sempre.*;
import fig.basic.LispTree;
import fig.basic.Option;

/**
 * Semantic functions for generating a new plot.
 *
 * Use generation procedure from https://github.com/vega/voyager2/blob/vy2-master/src/app/alternatives/alternatives.service.js
 *
 * Use constraints from https://github.com/vega/compassql/tree/master/src/constraint
 *
 * @author ppasupat
 */
public class JsonInitFn extends SemanticFn {
  public static class Options {
    @Option(gloss = "verbosity")
    public int verbose = 0;
  }
  public static Options opts = new Options();

  enum Mode {AnyChannel, AnyField, AnyMark, ChannelDef, CombineDefs, Finalize};
  Mode mode;
  DerivationStream stream;

  @Override
  public void init(LispTree tree) {
    super.init(tree);
    mode = Mode.valueOf(tree.child(1).toString());
  }

  @Override
  public DerivationStream call(final Example ex, final Callable c) {
    switch (mode) {
      case AnyChannel:
        return new AnyChannelStream(ex, c);
      case AnyField:
        return new AnyFieldStream(ex, c);
      case AnyMark:
        return new AnyMarkStream(ex, c);
      case ChannelDef:
        return new ChannelDefStream(ex, c);
      case CombineDefs:
        return new CombineDefsStream(ex, c);
      case Finalize:
        return new FinalizeStream(ex, c);
      default:
        throw new RuntimeException("Unrecognized mode: " + mode);
    }
  }

  // ============================================================
  // AnyChannel, AnyField, AnyMark
  // ============================================================

  /**
   * Generate a ValueFormula(JsonValue(s)) for each possible channel s ("x", "y", etc.)
   */
  static class AnyChannelStream extends MultipleDerivationStream {
    Callable callable;
    Iterator<String> itr;

    public AnyChannelStream(Example ex, Callable c) {
      callable = c;
      itr = VegaResources.CHANNELS.iterator();
    }

    @Override
    public Derivation createDerivation() {
      if (!itr.hasNext()) return null;
      JsonValue value = new JsonValue(itr.next()).withSchemaType("string");
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(new ValueFormula<>(value))
          .createDerivation();
    }
  }

  /**
   * Generate a ValueFormula(JsonValue(s)) for each possible data field s
   */
  static class AnyFieldStream extends MultipleDerivationStream {
    Callable callable;
    Iterator<VegaJsonContextValue.Field> itr;

    public AnyFieldStream(Example ex, Callable c) {
      callable = c;
      itr = ((VegaJsonContextValue) ex.context).getFields().iterator();
    }

    @Override
    public Derivation createDerivation() {
      if (!itr.hasNext()) return null;
      JsonValue value = new JsonValue(itr.next().name).withSchemaType("string");
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(new ValueFormula<>(value))
          .createDerivation();
    }
  }

  /**
   * Generate a ValueFormula(JsonValue(s)) for each possible mark s ("bar", "line", etc.)
   */
  static class AnyMarkStream extends MultipleDerivationStream {
    Callable callable;
    Iterator<String> itr;

    public AnyMarkStream(Example ex, Callable c) {
      callable = c;
      itr = VegaResources.MARKS.iterator();
    }

    @Override
    public Derivation createDerivation() {
      if (!itr.hasNext()) return null;
      JsonValue value = new JsonValue(itr.next()).withSchemaType("string");
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(new ValueFormula<>(value))
          .createDerivation();
    }
  }

  // ============================================================
  // Channel creation
  // ============================================================

  static final Formula CHANNEL = new ValueFormula<NameValue>(new NameValue("channel"));

  static final Map<String, List<String>> DATA_TYPE_TO_SPEC_TYPES = new HashMap<>();
  static {
    DATA_TYPE_TO_SPEC_TYPES.put("string", Arrays.asList("nominal", "ordinal"));
    DATA_TYPE_TO_SPEC_TYPES.put("integer", Arrays.asList("ordinal", "quantitative"));
    DATA_TYPE_TO_SPEC_TYPES.put("number", Arrays.asList("ordinal", "quantitative"));
    DATA_TYPE_TO_SPEC_TYPES.put("date", Arrays.asList("ordinal", "temporal"));
  }

  /**
   * Generate a channel definition as (: "channel" channelKey channelValue)
   */
  static class ChannelDefStream extends MultipleDerivationStream {
    Callable callable;
    VegaJsonContextValue context;
    Iterator<Formula> itr;

    public ChannelDefStream(Example ex, Callable c) {
      callable = c;
      context = (VegaJsonContextValue) ex.context;
      itr = generate().iterator();
    }

    @Override
    public Derivation createDerivation() {
      if (!itr.hasNext()) return null;
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(itr.next())
          .createDerivation();
    }

    private List<Formula> generate() {
      List<Formula> formulas = new ArrayList<>();
      Formula channelFormula = callable.child(0).formula;
      String channelName = formulaToString(channelFormula),
               fieldName = formulaToString(callable.child(1).formula);
      if ("*".equals(fieldName)) {
        // COUNT channel
        if (checkCountChannel(channelName)) {
          ObjectNode obj = Json.getMapper().createObjectNode();
          obj.put("type", "quantitative").put("aggregate", "count");
          Formula channelValue = new ValueFormula<JsonValue>(new JsonValue(obj));
          formulas.add(new ActionFormula(ActionFormula.Mode.primitive,
              Arrays.asList(CHANNEL, channelFormula, channelValue)));
        }
      } else {
        VegaJsonContextValue.Field field = context.getField(fieldName);
        for (String specType : DATA_TYPE_TO_SPEC_TYPES.get(field.type)) {
          // NORMAL channel
          if (checkNormalChannel(channelName, specType)) {
            ObjectNode obj = Json.getMapper().createObjectNode();
            obj.put("field", fieldName).put("type", specType);
            Formula channelValue = new ValueFormula<JsonValue>(new JsonValue(obj));
            formulas.add(new ActionFormula(ActionFormula.Mode.primitive,
                Arrays.asList(CHANNEL, channelFormula, channelValue)));
          }
          // AGGREGATE channel
          if (checkAggregateChannel(channelName, specType)) {
            for (String aggregateType : VegaResources.AGGREGATES) {
              ObjectNode obj = Json.getMapper().createObjectNode();
              obj.put("field", fieldName).put("type", specType).put("aggregate", aggregateType);
              Formula channelValue = new ValueFormula<JsonValue>(new JsonValue(obj));
              formulas.add(new ActionFormula(ActionFormula.Mode.primitive,
                  Arrays.asList(CHANNEL, channelFormula, channelValue)));
            }
          }
        }
      }
      return formulas;
    }

    // ==============
    // Helper methods
    // ==============

    private String formulaToString(Formula f) {
      Value v = ((ValueFormula<?>) f).value;
      if (v instanceof NameValue) {
        return ((NameValue) v).id;
      } else if (v instanceof JsonValue) {
        return ((JsonValue) v).getJsonNode().textValue();
      }
      throw new RuntimeException("Cannot convert " + f + " to string");
    }

    private boolean checkCountChannel(String channelName) {
      return !(
          "row".equals(channelName) || "column".equals(channelName) || "shape".equals(channelName));
    }

    private boolean checkNormalChannel(String channelName, String specType) {
      if ("row".equals(channelName) || "column".equals(channelName))
        return "ordinal".equals(specType) || "nominal".equals(specType);
      if ("opacity".equals(channelName) || "size".equals(channelName) ||
          "x2".equals(channelName) || "y2".equals(channelName))
        return "quantitative".equals(specType) || "temporal".equals(specType);
      if ("shape".equals(channelName))
        return "nominal".equals(specType);
      return true;
    }

    private boolean checkAggregateChannel(String channelName, String specType) {
      return "quantitative".equals(specType) && !(
          "row".equals(channelName) || "column".equals(channelName) || "shape".equals(channelName));
    }
  }

  // ============================================================
  // Combine
  // ============================================================

  static class CombineDefsStream extends SingleDerivationStream {
    Callable callable;
    VegaJsonContextValue context;

    public CombineDefsStream(Example ex, Callable c) {
      callable = c;
      context = (VegaJsonContextValue) ex.context;
    }

    @Override
    public Derivation createDerivation() {
      List<Formula> channelDefs = new ArrayList<>();
      Formula newChannelDef;
      if (callable.getChildren().size() == 1) {
        newChannelDef = callable.child(0).formula;
      } else {
        ActionFormula oldChannelDefs = (ActionFormula) (callable.child(0).formula);
        assert oldChannelDefs.mode == ActionFormula.Mode.sequential;
        channelDefs.addAll(oldChannelDefs.args);
        newChannelDef = callable.child(1).formula;
      }
      if (!check(channelDefs, newChannelDef)) return null;
      // Create a derivation
      channelDefs.add(newChannelDef);
      ActionFormula combined = new ActionFormula(ActionFormula.Mode.sequential, channelDefs);
      System.out.println(combined);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(combined)
          .createDerivation();
    }

    private boolean check(List<Formula> channelDefs, Formula newChannelDef) {
      if (channelDefs.size() > 1) return false;
      // Must not repeat a field or a channel
      String newChannel = getChannel(newChannelDef), newField = getField(newChannelDef);
      for (Formula channelDef : channelDefs) {
        if (newChannel.equals(getChannel(channelDef)) || newField.equals(getField(channelDef)))
          return false;
      }
      // TODO: Add more constraints
      return true;
    }

    private String getChannel(Formula channelDef) {
      ValueFormula<?> formula = (ValueFormula<?>) ((ActionFormula) channelDef).args.get(1);
      return ((JsonValue) formula.value).getJsonNode().textValue();
    }

    private String getField(Formula channelDef) {
      ValueFormula<?> formula = (ValueFormula<?>) ((ActionFormula) channelDef).args.get(2);
      JsonNode field = ((JsonValue) formula.value).getJsonNode().get("field");
      return field == null ? "*" : field.textValue();
    }

  }

  // ============================================================
  // Concretize
  // ============================================================

  static final ValueFormula<NameValue> INIT = new ValueFormula<>(new NameValue("init"));

  static class FinalizeStream extends SingleDerivationStream {
    Callable callable;

    public FinalizeStream(Example ex, Callable c) {
      callable = c;
    }

    @Override
    public Derivation createDerivation() {
      Formula mark = callable.child(0).formula, channelDefs = callable.child(1).formula;
      // TODO: Add more constraints
      ActionFormula finalized = new ActionFormula(ActionFormula.Mode.primitive,
          Arrays.asList(INIT, mark, channelDefs));
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(finalized)
          .createDerivation();
    }
  }

}
