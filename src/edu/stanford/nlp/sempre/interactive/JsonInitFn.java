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
    return null;
  }

}
