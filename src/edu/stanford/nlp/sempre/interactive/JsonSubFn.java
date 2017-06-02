package edu.stanford.nlp.sempre.interactive;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.ActionFormula;
import edu.stanford.nlp.sempre.Derivation;
import edu.stanford.nlp.sempre.DerivationStream;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.LambdaFormula;
import edu.stanford.nlp.sempre.MultipleDerivationStream;
import edu.stanford.nlp.sempre.NameValue;
import edu.stanford.nlp.sempre.SemanticFn;
import edu.stanford.nlp.sempre.SingleDerivationStream;
import edu.stanford.nlp.sempre.Value;
import edu.stanford.nlp.sempre.ValueFormula;
import edu.stanford.nlp.sempre.ActionFormula.Mode;
import edu.stanford.nlp.sempre.interactive.DALExecutor.SpecialSets;
import fig.basic.LispTree;
import fig.basic.LogInfo;
import fig.basic.Option;

/**
 * Take 2 arguments, type check them, and apply.
 * 
 * @author sidaw
 */
public class JsonSubFn extends SemanticFn {
  public static class Options {
    @Option(gloss = "verbosity")
    public int verbose = 0;
  }

  public static Options opts = new Options();
  Formula arg1, arg2;
  enum Direction {left, right};
  Direction direction;
  @Override
  public void init(LispTree tree) {
    super.init(tree);
    if (tree.child(1).toString().equals("left")) {
      direction = Direction.left;
    } else {
      direction = Direction.right;
    }
  }

  @Override
  public DerivationStream call(final Example ex, final Callable c) {
    List<Derivation> args = c.getChildren();
    Derivation func;
    Derivation arg;

    if (direction == Direction.right) {
      func = c.child(0); arg = c.child(1);
    }
    else {
      func = c.child(1); arg = c.child(0);
    }
    return new Substitutions(c, func, arg);
  }

  static class Substitutions extends MultipleDerivationStream {
    Callable c;
    Derivation func, arg;
    List<JsonFormula> candidates;
    int numGenerated = 0;

    public Substitutions(Callable c, Derivation func, Derivation arg) {
      // TODO Auto-generated constructor stub
      this.c = c; this.func = func; this.arg = arg;
      
      candidates = ((JsonFormula)func.formula).substitute(arg.formula);
    }

    @Override
    public Derivation createDerivation() {
      if (numGenerated >= candidates.size()) return null;
      
      Formula f = candidates.get(numGenerated);
      
      numGenerated ++;
      Derivation res = new Derivation.Builder().withCallable(c).formula(f).createDerivation();
      return res;
    }
  };
}
