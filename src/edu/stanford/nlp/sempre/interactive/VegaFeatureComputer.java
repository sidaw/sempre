package edu.stanford.nlp.sempre.interactive;

import java.util.ArrayList;
import java.util.List;

import edu.stanford.nlp.sempre.*;
import fig.basic.LispTree;
import fig.basic.LogInfo;
import fig.basic.Option;

/**
 * Feature computer for Vega logical forms
 * 
 * @author sidaw
 */
public class VegaFeatureComputer implements FeatureComputer {
  public static class Options {
    @Option(gloss = "Verbosity")
    public int verbose = 0;

    @Option(gloss = "the N in N-gram")
    public int ngramN = 3;

    @Option(gloss = "size of the context window to consider")
    public int windowSize = 2;
  }

  public static Options opts = new Options();

  @Override
  public void extractLocal(Example ex, Derivation deriv) {
    extractRuleFeatures(ex, deriv);
    extractDefaultFeatures(ex, deriv);
  }

  private void extractDefaultFeatures(Example ex, Derivation deriv) {
    VegaJsonContextValue context = (VegaJsonContextValue) ex.context;
    // favor one type over another when context is empty
    if (deriv.isRootCat() && !context.getJsonNode().has("$schema")) {
      String mode = Formulas.getString(((ActionFormula)deriv.formula).args.get(0));
      if (mode == "set") {
        deriv.addFeature("defaults", "setWithoutContext", 1);
      }
    }

    if (deriv.getRule().isAnchored()) {
      deriv.addFeature("defaults", "anchored");
    }
  }

  private void extractRuleFeatures(Example ex, Derivation deriv) {
    // Indicators for each JSON type
    if (deriv.formula instanceof ValueFormula) {
      Value v = ((ValueFormula) deriv.formula).value;
      if (v instanceof JsonValue) {
        String schemaType = ((JsonValue) v).getSchemaType();
        if (FeatureExtractor.containsDomain("valueType")) {
          deriv.addFeature("valueType", schemaType);
        }
        if (FeatureExtractor.containsDomain("lexValueType")) {
          for (String lemma: ex.getLemmaTokens())
            deriv.addFeature("lexValueType", "lemma=" + lemma + ",valueType=" + schemaType);
        }
      }
    }

    // Indicators for each JSON key
    if (deriv.rule != Rule.nullRule && deriv.rule.lhs.equals("$Action") &&
        (deriv.rule.rhs.get(0).equals("$PathPattern") ||
         deriv.rule.rhs.get(0).equals("$DSPathPattern"))) {
      // Note: doing it here because "*" expansion doesn't happen until after we join
      // If we change that, should look for lhs == "$PathPattern" instead
      // But this lets us hold onto everything until we type-check
      LispTree tree = deriv.formula.toLispTree();
      String path = tree.child(2).value;
      String[] pathTokens = path.split("[.]");
      if (FeatureExtractor.containsDomain("pathPattern")){
        deriv.addFeature("pathPattern", "path=" + path);
        for (String token: pathTokens) {
          deriv.addFeature("pathPattern", "token=" + token);
        }
      }
      if (FeatureExtractor.containsDomain("lexPathPattern")) {
        for (String lemma: ex.getLemmaTokens()) {
          deriv.addFeature("lexPathPattern", "lemma=" + lemma + ",path=" + path);
          for (String token: pathTokens) {
            deriv.addFeature("lexPathPattern", "lemma=" + lemma + ",token=" + token);
          }
        }
      }
    }
  }
}
