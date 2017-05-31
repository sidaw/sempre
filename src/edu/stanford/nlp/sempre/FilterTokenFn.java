package edu.stanford.nlp.sempre;

import fig.basic.LispTree;

import java.util.ArrayList;
import java.util.List;

/**
 * Given a token at a particular position, keep it if from a select set (or not).
 *
 * @author ppasupat sidaw
 */
public class FilterTokenFn extends SemanticFn {
  List<String> acceptableTokens = new ArrayList<>();
  String mode;
  boolean invert = false;

  public void init(LispTree tree) {
    super.init(tree);
    mode = tree.child(1).value;
    if (!mode.equals("token") && !mode.equals("lemma") && !mode.equals("nottoken") && !mode.equals("notlemma"))
      throw new RuntimeException("Illegal description for FilterTokenFn: " + mode);
    for (int j = 2; j < tree.children.size(); j++) {
      acceptableTokens.add(tree.child(j).value);
    }
    if (mode.startsWith("not")) invert = true;
  }

  public DerivationStream call(final Example ex, final Callable c) {
    return new SingleDerivationStream() {
      @Override
      public Derivation createDerivation() {
        if (!isValid(ex, c))
          return null;
        else {
          return new Derivation.Builder()
                  .withCallable(c)
                  .withFormulaFrom(c.child(0))
                  .createDerivation();
        }
      }
    };
  }

  private boolean isValid(Example ex, Callable c) {
    if (c.getEnd() - c.getStart() != 1) return false;
    String token;
    if (mode.contains("token"))
      token = ex.token(c.getStart());
    else
      token = ex.lemmaToken(c.getStart());
    if (!invert)
      return acceptableTokens.contains(token);
    else
      return !acceptableTokens.contains(token);
  }
}
