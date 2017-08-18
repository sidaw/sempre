package edu.stanford.nlp.sempre.interactive;

import java.util.*;

import com.beust.jcommander.internal.Lists;

import edu.stanford.nlp.sempre.*;
import fig.basic.LogInfo;
import fig.basic.Option;

public class VegaRandomizer {
  public static class Options {
    @Option(gloss = "Random seed")
    public Random vegaRandomizerRandom = new Random(42);
  }
  public static Options opts = new Options();

  final Example ex;
  final Builder builder;

  public VegaRandomizer(Example ex, Builder builder) {
    this.ex = ex;
    this.builder = builder;
  }

  /**
   * Generate derivations for the example.
   */
  public Example generate(int amount) {
    LogInfo.begin_track("VegaRandomizer.generate");
    List<Derivation> derivations = new ArrayList<>();
    // Generate the paths
    List<List<String>> paths = VegaResources.allPathsMatcher.match(null);
    while (derivations.size() < amount) {
      int pathIndex = opts.vegaRandomizerRandom.nextInt(paths.size());
      List<String> path = paths.get(pathIndex);
      List<JsonValue> values = VegaResources.getValues(path);
      if (values.isEmpty()) continue;
      int valueIndex = opts.vegaRandomizerRandom.nextInt(values.size());
      Derivation deriv = createDeriv(path, values.get(valueIndex));
      derivations.add(deriv);
      LogInfo.logs("%s", deriv);
    }
    LogInfo.end_track();
    ex.predDerivations = derivations;
    return ex;
  }

  private Derivation createDeriv(List<String> path, JsonValue value) {
    NameValue fullPath = new NameValue("$." + String.join(".", path));
    Formula setFormula = new ActionFormula(ActionFormula.Mode.primitive,
        Lists.newArrayList(
            new ValueFormula<NameValue>(new NameValue("set")),
            new ValueFormula<NameValue>(fullPath),
            new ValueFormula<JsonValue>(value)));
    Derivation deriv = new Derivation.Builder()
        .formula(setFormula).createDerivation();
    CanonicalUtteranceGenerator cuGenerator = new CanonicalUtteranceGenerator(String.join(" ", path), value.getJsonNode().toString());
    deriv.canonicalUtterance = cuGenerator.getSimpleCanonicalUtterance();
    deriv.ensureExecuted(builder.executor, ex.context);
    return deriv;
  }

}
