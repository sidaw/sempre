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
import fig.basic.Option;

/**
 * Take 2 arguments, type check them, and apply.
 * 
 * @author sidaw
 */
public class SubFn extends SemanticFn {
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

  public static class Substitutions extends MultipleDerivationStream {
    Callable c;
    Derivation func, arg;
    List<Formula> candidates;
    int numGenerated = 0;
    public Substitutions(Callable c, Derivation func, Derivation arg) {
      // TODO Auto-generated constructor stub
      this.c = c; this.func = func; this.arg = arg;
      candidates = getCandidates(func.formula, arg.formula);
    }
    
    private List<Formula> suble(Formula f) {
      String type = DALExecutor.getType(f);
      if (type == null)
        return new ArrayList<>();
      return Lists.newArrayList(f);
    }
    
    private Set<Formula> getArgs(Formula func) {
      // primitive substitution
      return (func.mapToList(f -> suble(f), false)).stream().collect(Collectors.toSet());
    }
    
    // the list of all formulas that can be substituted in a given formula
    private List<Formula> getCandidates(Formula funcFormula, Formula argFormula) {
      return getArgs(funcFormula).stream().filter(f -> 
        DALExecutor.getType(f).equals(DALExecutor.getType(argFormula))
      ).collect(Collectors.toList());
      // best if we can sort according to score here
    }

    @Override
    public Derivation createDerivation() {
      if (numGenerated >= candidates.size()) return null;
      
      Formula subee = candidates.get(numGenerated);
      numGenerated ++;
      Formula f = new ActionFormula(Mode.substitute, Lists.newArrayList(func.getFormula(), subee, arg.getFormula()));
      Derivation res = new Derivation.Builder().withCallable(c).formula(f).createDerivation();
      return res;
    }
  };
}
