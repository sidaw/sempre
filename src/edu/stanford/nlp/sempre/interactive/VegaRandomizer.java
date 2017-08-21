package edu.stanford.nlp.sempre.interactive;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.beust.jcommander.internal.Lists;
import com.fasterxml.jackson.databind.JsonNode;

import edu.stanford.nlp.sempre.*;
import edu.stanford.nlp.sempre.interactive.VegaJsonContextValue.Field;
import fig.basic.LogInfo;
import fig.basic.Option;

public class VegaRandomizer {
  public static class Options {
    @Option(gloss = "Random seed")
    public Random vegaRandomizerRandom = new Random(42);
    @Option(gloss = "Maximum number of randomization tries")
    public int maxRandomTries = 100;
  }
  public static Options opts = new Options();

  final Example ex;
  final Builder builder;
  final VegaJsonContextValue context;

  public VegaRandomizer(Example ex, Builder builder) {
    this.ex = ex;
    this.builder = builder;
    this.context = (VegaJsonContextValue) ex.context;
  }

  /** Helper function for randomizing an item. */
  private <T> T randomChoice (List<T> stuff) {
    if (stuff.isEmpty()) return null;
    int index = opts.vegaRandomizerRandom.nextInt(stuff.size());
    return stuff.get(index);
  }

  // ============================================================
  // Generate initial plots
  // ============================================================

  public Example generateInitial(int amount) {
    LogInfo.begin_track("VegaRandomizer.generateInitial");
    List<Derivation> derivations = new ArrayList<>();
    List<String> templates = VegaResources.templatesWithPlaceholders;
    int tries = 0;
    while (derivations.size() < amount && tries < opts.maxRandomTries) {
      tries++;
      // Pick a template
      String template = randomChoice(templates);
      // Fill in placeholders
      template = fillPlaceholders(template);
      if (template == null) continue;
      // Build the derivation
      Derivation deriv = createInitialDeriv(template);
      derivations.add(deriv);
      LogInfo.logs("%s", deriv.value);
    }
    LogInfo.end_track();
    ex.predDerivations = derivations;
    return ex;
  }

  static final Pattern PLACEHOLDER = Pattern.compile("@FIELD_\\d+_([^@]*)@");

  // Mapping from Vega type to compatible data type
  static final Map<String, List<String>> TYPE_MAP = new HashMap<>();
  static {
    TYPE_MAP.put("nominal", Arrays.asList("string"));
    TYPE_MAP.put("ordinal", Arrays.asList("integer", "number", "date"));
    TYPE_MAP.put("quantitative", Arrays.asList("integer", "number"));
    TYPE_MAP.put("temporal", Arrays.asList("date"));
  }

  private String fillPlaceholders(String template) {
    List<Field> fields = new ArrayList<>(context.getFields());
    //LogInfo.logs("%s | %s", fields, template);
    while (template.contains("@FIELD")) {
      Matcher matcher = PLACEHOLDER.matcher(template);
      matcher.find();
      String type = matcher.group(1);
      List<Field> eligibleFields = new ArrayList<>();
      for (Field field : fields) {
        if (TYPE_MAP.get(type).contains(field.type))
          eligibleFields.add(field);
      }
      //LogInfo.logs("type: %s --> fields: %s", type, eligibleFields);
      Field selectedField = randomChoice(eligibleFields);
      if (selectedField == null) return null;
      template = matcher.replaceFirst(selectedField.name);
      //LogInfo.logs("=> %s", template);
      fields.remove(selectedField);
    }
    return template;
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
      // Pick a path and value
      List<String> path = randomChoice(paths);
      JsonValue value = randomChoice(VegaResources.getValues(path));
      if (value == null) continue;
      // Build the derivation
      Derivation deriv = createModificationDeriv(path, value);
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
    deriv.ensureExecuted(builder.executor, context);
    return deriv;
  }

}
