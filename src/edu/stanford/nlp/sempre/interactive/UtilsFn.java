package edu.stanford.nlp.sempre.interactive;

import java.util.List;
import java.util.stream.Stream;

import org.testng.util.Strings;

import com.beust.jcommander.internal.Sets;

import edu.stanford.nlp.sempre.AtomicSemType;
import edu.stanford.nlp.sempre.Derivation;
import edu.stanford.nlp.sempre.DerivationStream;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.MultipleDerivationStream;
import edu.stanford.nlp.sempre.SemType;
import edu.stanford.nlp.sempre.SemanticFn;
import edu.stanford.nlp.sempre.SimpleLexicon;
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
  enum Mode {isPrimitive, tokenLeft, tokenRight, lookup, template};
  Mode mode;
  DerivationStream stream;
  
  public static final SemType primitiveType = new AtomicSemType("primitive");
  
  @Override
  public void init(LispTree tree) {
    super.init(tree);
    mode = Mode.valueOf(tree.child(1).toString());
  }

  @Override
  public DerivationStream call(final Example ex, final Callable c) {
    if (mode == Mode.isPrimitive) {
      return new IsPrimitiveStream(c);
    } else if (mode == Mode.tokenRight) {
      return new EatTokenStream(c, c.child(0), c.child(1));
    } else if (mode == Mode.tokenLeft) {
      return new EatTokenStream(c, c.child(1), c.child(0));
    } else if (mode == Mode.lookup) {
      return new LookupStream(c);
    } else if (mode == Mode.template) {
      return new TemplateStream(c);
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
    Callable callable;
    public IsPrimitiveStream(Callable callable) {
      this.callable = callable;
    }
    
    @Override
    public Derivation createDerivation() {
      Derivation child = callable.child(0);
      if (child.type == primitiveType) {
        return new Derivation.Builder()
            .withCallable(callable)
            .formula(child.formula)
            .type(primitiveType)
            .createDerivation();
      } else {
        return null;
      }
    }
  }
  
  static class LookupStream extends MultipleDerivationStream {
    List<SymbolTable.Entry> entries;
    Callable callable;
    int currIndex = 0;

    public LookupStream(Callable c) {
      callable = c;
      this.entries = SymbolTable.singleton().getEntries(c.childStringValue(0));
    }
    
    @Override
    public Derivation createDerivation() {
      if (currIndex == entries.size()) return null;
      SymbolTable.Entry entry = entries.get(currIndex++);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(entry.formula)
          .type(primitiveType)
          .createDerivation();
    }
  }
  
  static class TemplateStream extends MultipleDerivationStream {
    List<JsonFormula> templates;
    Callable callable;
    int currIndex = 0;

    public TemplateStream(Callable c) {
      callable = c;
      this.templates = Templates.singleton().templates;
    }
    
    @Override
    public Derivation createDerivation() {
      if (currIndex == templates.size()) return null;
      JsonFormula formula = templates.get(currIndex++);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }

}
