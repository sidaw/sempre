package edu.stanford.nlp.sempre.interactive;

import java.util.*;

import com.fasterxml.jackson.databind.node.ObjectNode;

import edu.stanford.nlp.sempre.*;
import edu.stanford.nlp.sempre.interactive.VegaJsonContextValue.Field;
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

  static String formulaToString(Formula f) {
    Value v = ((ValueFormula<?>) f).value;
    if (v instanceof NameValue) {
      return ((NameValue) v).id;
    } else if (v instanceof JsonValue) {
      return ((JsonValue) v).getJsonNode().textValue();
    }
    throw new RuntimeException("Cannot convert " + f + " to string");
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
    Iterator<Field> itr;

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

  public static class ChannelDefFormula extends ActionFormula {
    String channelName, fieldName;
    ObjectNode def;

    public ChannelDefFormula(Formula channel, String channelName, ObjectNode def) {
      super(ActionFormula.Mode.primitive, Arrays.asList(CHANNEL, channel, new ValueFormula<JsonValue>(new JsonValue(def))));
      this.channelName = channelName;
      this.fieldName = def.has("field") ? def.get("field").textValue() : "*";
      this.def = def;
    }

    public String defValue(String key) {
      return def.has(key) ? def.get(key).textValue() : null;
    }
  }

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
    Iterator<Derivation> itr;

    public ChannelDefStream(Example ex, Callable c) {
      callable = c;
      context = (VegaJsonContextValue) ex.context;
      itr = generate().iterator();
    }

    @Override
    public Derivation createDerivation() {
      return itr.hasNext() ? itr.next() : null;
    }

    private List<Derivation> generate() {
      List<Derivation> derivations = new ArrayList<>();
      Formula channelFormula = callable.child(0).formula;
      String channelName = formulaToString(channelFormula),
               fieldName = formulaToString(callable.child(1).formula);
      if ("*".equals(fieldName)) {
        // COUNT channel
        if (checkCountChannel(channelName)) {
          ObjectNode obj = Json.getMapper().createObjectNode();
          obj.put("type", "quantitative").put("aggregate", "count");
          derivations.add(new Derivation.Builder().withCallable(callable)
              .formula(new ChannelDefFormula(channelFormula, channelName, obj))
              .canonicalUtterance(String.format("count encoded as %s", channelName))
              .createDerivation());
        }
      } else {
        Field field = context.getField(fieldName);
        for (String specType : DATA_TYPE_TO_SPEC_TYPES.get(field.type)) {
          // NORMAL channel
          if (checkNormalChannel(channelName, specType, field)) {
            ObjectNode obj = Json.getMapper().createObjectNode();
            obj.put("field", fieldName).put("type", specType);
            derivations.add(new Derivation.Builder().withCallable(callable)
                .formula(new ChannelDefFormula(channelFormula, channelName, obj))
                .canonicalUtterance(String.format("%s encoded as %s", fieldName, channelName))
                .createDerivation());
          }
          // AGGREGATE channel
          if (checkAggregateChannel(channelName, specType, field)) {
            for (String aggregateType : VegaResources.AGGREGATES) {
              ObjectNode obj = Json.getMapper().createObjectNode();
              obj.put("field", fieldName).put("type", specType).put("aggregate", aggregateType);
              derivations.add(new Derivation.Builder().withCallable(callable)
                  .formula(new ChannelDefFormula(channelFormula, channelName, obj))
                  .canonicalUtterance(String.format("%s of %s encoded as %s", aggregateType, fieldName, channelName))
                  .createDerivation());
            }
          }
        }
      }
      return derivations;
    }

    private boolean checkCountChannel(String channelName) {
      return !(
          "row".equals(channelName) || "column".equals(channelName) || "shape".equals(channelName));
    }

    private static final int MAX_UNIQUE_COUNT_FOR_FACET = 10;
    private static final int MAX_UNIQUE_COUNT_FOR_SHAPE = 6;
    private static final int MAX_UNIQUE_COUNT_FOR_COLOR = 10;
    private static final int MAX_UNIQUE_COUNT_FOR_DISCRETE = 20;

    private boolean checkNormalChannel(String channelName, String specType, Field field) {
      // Facets
      if ("row".equals(channelName) || "column".equals(channelName)) {
        if (!("ordinal".equals(specType) || "nominal".equals(specType))) return false;
        if (field.uniqueCount > MAX_UNIQUE_COUNT_FOR_FACET) return false;
      }
      // Quantitative styles
      if ("opacity".equals(channelName) || "size".equals(channelName) ||
          "x2".equals(channelName) || "y2".equals(channelName)) {
        if (!("quantitative".equals(specType) || "temporal".equals(specType))) return false;
      }
      // Discrete styles
      if ("shape".equals(channelName)) {
        if (!"nominal".equals(specType)) return false;
        if (field.uniqueCount > MAX_UNIQUE_COUNT_FOR_SHAPE) return false;
      }
      // Max unique count
      if ("nominal".equals(specType) || "ordinal".equals(specType)) {
        if (field.uniqueCount > MAX_UNIQUE_COUNT_FOR_DISCRETE) return false;
        if ("color".equals(channelName) && field.uniqueCount > MAX_UNIQUE_COUNT_FOR_COLOR) return false;
      }
      return true;
    }

    private boolean checkAggregateChannel(String channelName, String specType, Field field) {
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
      ChannelDefFormula newChannelDef;
      String canonicalUtterance;
      if (callable.getChildren().size() == 1) {
        newChannelDef = (ChannelDefFormula) callable.child(0).formula;
        canonicalUtterance = callable.child(0).canonicalUtterance;
      } else {
        ActionFormula oldChannelDefs = (ActionFormula) (callable.child(0).formula);
        assert oldChannelDefs.mode == ActionFormula.Mode.sequential;
        channelDefs.addAll(oldChannelDefs.args);
        newChannelDef = (ChannelDefFormula) callable.child(1).formula;
        canonicalUtterance = callable.child(0).canonicalUtterance + "; " + callable.child(1).canonicalUtterance;
      }
      if (!check(channelDefs, newChannelDef)) return null;
      // Create a derivation
      channelDefs.add(newChannelDef);
      ActionFormula combined = new ActionFormula(ActionFormula.Mode.sequential, channelDefs);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(combined)
          .canonicalUtterance(canonicalUtterance)
          .createDerivation();
    }

    private boolean check(List<Formula> channelDefs, ChannelDefFormula newChannelDef) {
      // Prevent too many encodings
      if (channelDefs.size() >= 3) return false;
      // Must not repeat a field or a channel
      for (Formula c : channelDefs) {
        ChannelDefFormula oldChannelDef = (ChannelDefFormula) c;
        if (newChannelDef.channelName.equals(oldChannelDef.channelName) ||
            newChannelDef.fieldName.equals(oldChannelDef.fieldName)) {
          return false;
        }
      }
      // Cannot have more than one non-normal channels
      if (newChannelDef.def.has("aggregate")) {
        for (Formula c : channelDefs) {
          ChannelDefFormula oldChannelDef = (ChannelDefFormula) c;
          if (oldChannelDef.def.has("aggregate")) return false;
        }
      }
      // If x or y is not filled, don't use other channels yet
      if (!("x".equals(newChannelDef.channelName) || "y".equals(newChannelDef.channelName))) {
        boolean hasX = false, hasY = false;
        for (Formula c : channelDefs) {
          ChannelDefFormula oldChannelDef = (ChannelDefFormula) c;
          if ("x".equals(oldChannelDef.channelName)) hasX = true;
          else if ("y".equals(oldChannelDef.channelName)) hasY = true;
        }
        if (!(hasX && hasY)) return false;
      }
      // TODO: Add more constraints
      return true;
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
      if (!check(formulaToString(mark), ((ActionFormula) channelDefs).args)) return null;
      ActionFormula finalized = new ActionFormula(ActionFormula.Mode.primitive,
          Arrays.asList(INIT, mark, channelDefs));
      String canonicalUtterance = String.format("initialize %s plot with %s",
          formulaToString(mark), callable.child(1).canonicalUtterance);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(finalized)
          .canonicalUtterance(canonicalUtterance)
          .createDerivation();
    }

    private boolean check(String mark, List<Formula> channelDefs) {
      List<String> channelNames = new ArrayList<>();
      // Disallow mark = "text" for now
      if ("text".equals(mark)) return false;
      // Some channels only go with certain marks
      for (Formula c : channelDefs) {
        ChannelDefFormula channelDef = (ChannelDefFormula) c;
        String channelName = channelDef.channelName;
        channelNames.add(channelName);
        if (("x2".equals(channelName) || "y2".equals(channelName))
            && !("rule".equals(mark) || "bar".equals(mark) || "rect".equals(mark) || "area".equals(mark)))
          return false;
        if ("shape".equals(channelName) && !("point".equals(mark)))
          return false;
        if ("text".equals(channelName) && !("text".equals(mark)))
          return false;
      }
      // Must have the required channels
      if (!(channelNames.contains("x") || channelNames.contains("y")))
        return false;
      if (("area".equals(mark) || "line".equals(mark))
          && !(channelNames.contains("x") && channelNames.contains("y")))
        return false;
      // Aggregate can only appear when there is at least one an ordinal / nominal
      // Count can only appear when all other fields are ordinal / nominal
      boolean hasAggregate = false, hasCount = false, hasDiscrete = false, hasNonDiscrete = false;
      for (Formula c : channelDefs) {
        ChannelDefFormula channelDef = (ChannelDefFormula) c;
        if ("count".equals(channelDef.defValue("aggregate"))) {
          hasCount = true;
        } else if (channelDef.defValue("aggregate") != null) {
          hasAggregate = true;
        }
        String type = channelDef.defValue("type");
        if ("ordinal".equals(type) || "nominal".equals(type)) {
          hasDiscrete = true;
        } else {
          hasNonDiscrete = true;
        }
      }
      if (hasAggregate && !hasDiscrete) return false;
      if (hasCount && hasNonDiscrete) return false;
      // TODO: Add more constraints
      return true;
    }
  }

}
