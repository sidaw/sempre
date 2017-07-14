package edu.stanford.nlp.sempre.interactive;

import java.util.ArrayList;
import java.util.List;

import edu.stanford.nlp.sempre.Derivation;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.FeatureComputer;
import edu.stanford.nlp.sempre.FeatureExtractor;
import edu.stanford.nlp.sempre.Rule;
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
  }

  // function to abstract out ALL anchored stuff in the utterance.
  private List<String> abstractAnchors(Derivation deriv, List<String> tokens, int window) {
    if (deriv.start == -1)
      return tokens;
    List<String> newTokens = new ArrayList<>();
    int startInd = Math.max(0, deriv.start - window);
    int endInd = Math.min(tokens.size(), deriv.end + window);
    newTokens.addAll(tokens.subList(startInd, deriv.start));
    newTokens.add(deriv.cat);
    newTokens.addAll(tokens.subList(deriv.end, endInd));
    return newTokens;
  }

  private List<String> getAllNgrams(List<String> tokens, int n, Derivation deriv) {
    List<String> ngrams = new ArrayList<>();
    List<String> paddedTokens = new ArrayList<>();
    if (deriv.start == -1) // floating, just add everything
      paddedTokens.addAll(tokens);
    else {
      paddedTokens.addAll(tokens.subList(Math.max(0, deriv.start - n + 1), Math.min(tokens.size(), deriv.end + n - 1)));
    }

    for (int i = 0; i < paddedTokens.size() - n + 1; i++) {
      List<String> current = new ArrayList<>(paddedTokens.subList(i, i + n));
      ngrams.add(current.toString());
    }
    return ngrams;
  }

  private List<String> getAllSkipGrams(List<String> tokens, Derivation deriv) {
    List<String> ngrams = new ArrayList<>();
    List<String> paddedTokens = new ArrayList<>();
    if (tokens.size() < 3)
      return ngrams;

    if (deriv.start == -1) // floating, just add everything
      paddedTokens.addAll(tokens);
    else
      paddedTokens.addAll(tokens.subList(Math.max(0, deriv.start - 2), Math.min(tokens.size(), deriv.end + 2)));

    for (int i = 0; i < tokens.size() - 2; i++) {
      ngrams.add("[" + tokens.get(i).toString() + ", *, " + tokens.get(i + 2) + "]");
    }
    return ngrams;
  }

  // Add an indicator for each applied rule.
  private void extractRuleFeatures(Example ex, Derivation deriv) {
    if (!FeatureExtractor.containsDomain(":rule"))
      return;
    if (deriv.rule != Rule.nullRule) {
      deriv.addFeature(":rule", "fire");
      deriv.addFeature(":rule", deriv.rule.toString());
    }
  }
}
