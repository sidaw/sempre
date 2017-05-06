package edu.stanford.nlp.sempre.interactive;

import org.testng.util.Strings;

import com.beust.jcommander.internal.Sets;

import edu.stanford.nlp.sempre.Derivation;
import edu.stanford.nlp.sempre.DerivationStream;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.SemanticFn;
import edu.stanford.nlp.sempre.SingleDerivationStream;
import fig.basic.LispTree;
import fig.basic.Option;

/**
 * collection of misc. semantic functions used in the algebra of DAL
 * @author sidaw
 */
public class UtilsFn extends SemanticFn {
  public static class Options {
    @Option(gloss = "verbosity")
    public int verbose = 0;
  }

  public static Options opts = new Options();
  Formula arg1, arg2;
  enum Mode {isPrimitive, tokenLeft, tokenRight };
  Mode mode;
  DerivationStream stream;
  @Override
  public void init(LispTree tree) {
    super.init(tree);
    mode = Mode.valueOf(tree.child(1).toString());
  }

  @Override
  public DerivationStream call(final Example ex, final Callable c) {
    if (mode == Mode.isPrimitive) {
      return null;
    } else if (mode == Mode.tokenRight) {
      return new EatTokenStream(c, c.child(0), c.child(1));
    } else if (mode == Mode.tokenLeft) {
      return new EatTokenStream(c, c.child(1), c.child(0));
    }
    return null;
  }

  static class EatTokenStream extends SingleDerivationStream {
    Derivation mainDeriv;
    Callable c;
    public EatTokenStream(Callable c, Derivation main, Derivation token) {
      mainDeriv = main;
      this.c = c;
    }
    @Override
    public Derivation createDerivation() {
      Derivation res = new Derivation.Builder().withCallable(c).formula(mainDeriv.formula).createDerivation();
      return res;
    }
  }
  
  static class IsPrimitiveStream extends SingleDerivationStream {
    Derivation mainDeriv;
    public IsPrimitiveStream(Derivation main) {
      mainDeriv = main;
    }
    @Override
    public Derivation createDerivation() {
      if (Strings.isNullOrEmpty(mainDeriv.grammarInfo.symbol)) {
        return null;
      } else {
        return mainDeriv;
      }
    }
  }
}
