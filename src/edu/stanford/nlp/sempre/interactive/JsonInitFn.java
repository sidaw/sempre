package edu.stanford.nlp.sempre.interactive;

import java.util.*;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;

import edu.stanford.nlp.sempre.*;
import edu.stanford.nlp.util.Pair;
import fig.basic.LispTree;
import fig.basic.Option;

/**
 * Semantic functions for generating a new plot.
 * @author ppasupat
 */
public class JsonInitFn extends SemanticFn {
  public static class Options {
    @Option(gloss = "verbosity")
    public int verbose = 0;
  }
  public static Options opts = new Options();

  Formula arg1, arg2;
  enum Mode {AnyMark, NormalChannel, AggregateChannel, CountChannel, Combine, Concretize};
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
      case AnyMark:
        return new AnyMarkStream(ex, c);
      case NormalChannel:
        return new NormalChannelStream(ex, c);
      case AggregateChannel:
        return new AggregateChannelStream(ex, c);
      case CountChannel:
        return new CountChannelStream(ex, c);
      case Combine:
        return new CombineStream(ex, c);
      case Concretize:
        return new ConcretizeStream(ex, c);
      default:
        throw new RuntimeException("Unrecognized mode: " + mode);
    }
  }

  // ============================================================
  // AnyMark
  // ============================================================

  /**
   * Generate a ValueFormula(JsonValue(s)) for each possible mark s ("bar", "line", etc.)
   */
  static class AnyMarkStream extends MultipleDerivationStream {
    Callable callable;
    Iterator<String> markIterator;

    public AnyMarkStream(Example ex, Callable c) {
      callable = c;
      markIterator = VegaResources.MARKS.iterator();
    }

    @Override
    public Derivation createDerivation() {
      if (!markIterator.hasNext()) return null;
      JsonValue value = new JsonValue(markIterator.next()).withSchemaType("string");
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(new ValueFormula<>(value))
          .createDerivation();
    }
  }

  // ============================================================
  // Channel creation
  // ============================================================

  static final ValueFormula<NameValue> NORMAL_CHANNEL = new ValueFormula<>(new NameValue("c_nrm"));
  static final ValueFormula<NameValue> AGGREGATE_CHANNEL = new ValueFormula<>(new NameValue("c_agg"));
  static final ValueFormula<NameValue> COUNT_CHANNEL = new ValueFormula<>(new NameValue("c_cnt"));
  static final ValueFormula<NameValue> STAR = new ValueFormula<>(new NameValue("*"));

  static class NormalChannelStream extends SingleDerivationStream {
    Callable callable;

    public NormalChannelStream(Example ex, Callable c) {
      callable = c;
    }

    @Override
    public Derivation createDerivation() {
      Formula channel = callable.child(0).formula, field = callable.child(1).formula;
      Formula formula = new ActionFormula(ActionFormula.Mode.primitive,
          Arrays.asList(NORMAL_CHANNEL, channel, field));
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }

  static class AggregateChannelStream extends SingleDerivationStream {
    Callable callable;

    public AggregateChannelStream(Example ex, Callable c) {
      callable = c;
    }

    @Override
    public Derivation createDerivation() {
      Formula channel = callable.child(0).formula, field = callable.child(1).formula;
      // Check if field can be aggregated
      // TODO
      Formula formula = new ActionFormula(ActionFormula.Mode.primitive,
          Arrays.asList(AGGREGATE_CHANNEL, channel, field));
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }

  static class CountChannelStream extends SingleDerivationStream {
    Callable callable;

    public CountChannelStream(Example ex, Callable c) {
      callable = c;
    }

    @Override
    public Derivation createDerivation() {
      Formula channel = callable.child(0).formula;
      Formula formula = new ActionFormula(ActionFormula.Mode.primitive,
          Arrays.asList(COUNT_CHANNEL, channel, STAR));
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }

  // ============================================================
  // Combine
  // ============================================================

  static class CombineStream extends SingleDerivationStream {
    Callable callable;

    public CombineStream(Example ex, Callable c) {
      callable = c;
    }

    @Override
    public Derivation createDerivation() {
      ActionFormula oldList = (ActionFormula) callable.child(0).formula,
                   newEntry = (ActionFormula) callable.child(1).formula;
      assert oldList.mode == ActionFormula.Mode.sequential;
      List<Formula> combined = new ArrayList<>(oldList.args);
      combined.add(newEntry);
      if (!checkChannelDefs(combined)) return null;
      Formula newList = new ActionFormula(ActionFormula.Mode.sequential, combined);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(newList)
          .createDerivation();
    }

    /**
     * Check the following conditions:
     * - Maximum length = 4
     * - Only one aggregate or count can be present, and must be the last entry
     * - Fields must not be repeated
     * - Channels must not be repeated
     */
    private boolean checkChannelDefs(List<Formula> combined) {
      if (combined.size() > 4) return false;
      List<Value> usedChannels = new ArrayList<>(), usedFields = new ArrayList<>();
      for (int i = 0; i < combined.size(); i++) {
        ActionFormula channelDef = (ActionFormula) combined.get(i);
        Formula type = channelDef.args.get(0);
        if (!type.equals(NORMAL_CHANNEL) && i != combined.size() - 1)
          return false;
        Value channel = ((ValueFormula<?>) channelDef.args.get(1)).value,
                field = ((ValueFormula<?>) channelDef.args.get(2)).value;
        if (!channel.equals(STAR.value)) {
          if (usedChannels.contains(channel)) return false;
          usedChannels.add(channel);
        }
        if (!field.equals(STAR.value)) {
          if (usedFields.contains(field)) return false;
          usedFields.add(field);
        }
      }
      return true;
    }
  }

  // ============================================================
  // Concretize
  // ============================================================

  static final ValueFormula<NameValue> INIT = new ValueFormula<>(new NameValue("init"));

  static class ConcretizeStream extends MultipleDerivationStream {
    Example ex;
    Callable callable;
    List<Formula> abstractChannelDefs;
    List<Pair<String, JsonNode>> concreteChannelDefs;
    List<Formula> concretizations = new ArrayList<>();
    Iterator<Formula> itr;

    public ConcretizeStream(Example ex, Callable c) {
      this.ex = ex;
      callable = c;
      ActionFormula child = (ActionFormula) callable.child(0).formula;
      assert child.mode == ActionFormula.Mode.sequential;
      abstractChannelDefs = child.args;
      concreteChannelDefs = new ArrayList<>();
      for (int i = 0; i < abstractChannelDefs.size(); i++)
        concreteChannelDefs.add(null);
      initConcretizations(0);
      itr = concretizations.iterator();
    }

    @Override
    public Derivation createDerivation() {
      if (!itr.hasNext()) return null;
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(itr.next())
          .createDerivation();
    }

    // Depth first search
    private void initConcretizations(int index) {
      if (index == abstractChannelDefs.size()) {
        ObjectNode node = Json.getMapper().createObjectNode();
        for (Pair<String, JsonNode> kv : concreteChannelDefs) {
          node.put(kv.first, kv.second);
        }
        concretizations.add(new ValueFormula<>(new JsonValue(node)));
        return;
      }
      ActionFormula abstractChannelDef = (ActionFormula) abstractChannelDefs.get(index);
      Formula type = abstractChannelDef.args.get(0);
      Value channel = ((ValueFormula<?>) abstractChannelDef.args.get(1)).value,
              field = ((ValueFormula<?>) abstractChannelDef.args.get(2)).value;
      if (type.equals(NORMAL_CHANNEL)) {
        ObjectNode node = Json.getMapper().createObjectNode();
        node.put("field", "a");
        concreteChannelDefs.set(index, new Pair<>("x", node));
        initConcretizations(index + 1);
      }
    }

  }

}
