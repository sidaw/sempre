package edu.stanford.nlp.sempre.interactive;

import java.util.*;

import edu.stanford.nlp.sempre.*;
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
        //return new ConcretizeStream(ex, c);
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
          Arrays.asList(COUNT_CHANNEL, channel));
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
      Formula newList = new ActionFormula(ActionFormula.Mode.sequential, combined);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(newList)
          .createDerivation();
    }
  }

  // ============================================================
  // Concretize
  // ============================================================

  static final ValueFormula<NameValue> INIT = new ValueFormula<>(new NameValue("init"));

  static class ConcretizeStream extends SingleDerivationStream {
  //static class ConcretizeStream extends MultipleDerivationStream {
    Example ex;
    Callable callable;

    public ConcretizeStream(Example ex, Callable c) {
      this.ex = ex;
      callable = c;
    }

    @Override
    public Derivation createDerivation() {
      ValueFormula mark = (ValueFormula) callable.child(0).formula;
      ActionFormula channelDefs = (ActionFormula) callable.child(1).formula;
      assert channelDefs.mode == ActionFormula.Mode.sequential;
      List<Formula> entries = new ArrayList<>(channelDefs.args);
      Formula newList = new ActionFormula(ActionFormula.Mode.primitive,
          Arrays.asList(INIT, mark, channelDefs));
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(newList)
          .createDerivation();
    }
  }

}
