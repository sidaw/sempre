package edu.stanford.nlp.sempre.interactive;

import java.util.*;

import com.beust.jcommander.internal.Lists;
import com.fasterxml.jackson.databind.JsonNode;

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

  // ============================================================
  // Generate initial plots
  // ============================================================

  public Example generateInitial(int amount) {
    LogInfo.begin_track("VegaRandomizer.generateInitial");
    List<Derivation> derivations = new ArrayList<>();
    List<String> templates = VegaResources.templatesWithPlaceholders;
    while (derivations.size() < amount) {
      // Pick a template
      int templateIndex = opts.vegaRandomizerRandom.nextInt(templates.size());
      String template = templates.get(templateIndex);
      // Fill in placeholders

      // Build the derivation
      Derivation deriv = createInitialDeriv(template);
      derivations.add(deriv);
      LogInfo.logs("%s", deriv.value);
    }
    LogInfo.end_track();
    ex.predDerivations = derivations;
    return ex;
  }

  private Derivation createInitialDeriv(String template) {
    JsonNode jsonNode = Json.readValueHard(template, JsonNode.class);
    Derivation deriv = new Derivation.Builder()
        .formula(new ValueFormula(new StringValue("init")))
        .value(new JsonValue(jsonNode)).createDerivation();
    return deriv;
  }

  // ============================================================
  // Generate modifications to the current plot
  // ============================================================

  /**
   * Generate derivations for the example.
   */
  public Example generateModification(int amount) {
    LogInfo.begin_track("VegaRandomizer.generateModification");
    List<Derivation> derivations = new ArrayList<>();
    List<List<String>> paths = VegaResources.allPathsMatcher.match(null);
    while (derivations.size() < amount) {
      // Pick a path
      int pathIndex = opts.vegaRandomizerRandom.nextInt(paths.size());
      List<String> path = paths.get(pathIndex);
      // Pick a value
      List<JsonValue> values = VegaResources.getValues(path);
      if (values.isEmpty()) continue;
      int valueIndex = opts.vegaRandomizerRandom.nextInt(values.size());
      // Build the derivation
      Derivation deriv = createModificationDeriv(path, values.get(valueIndex));
      derivations.add(deriv);
      LogInfo.logs("%s", deriv);
    }
    LogInfo.end_track();
    ex.predDerivations = derivations;
    return ex;
  }

  private Derivation createModificationDeriv(List<String> path, JsonValue value) {
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
