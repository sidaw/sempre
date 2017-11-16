package edu.stanford.nlp.sempre.interactive;

import java.util.*;
import java.util.stream.Collectors;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import edu.stanford.nlp.sempre.*;
import edu.stanford.nlp.sempre.interactive.VegaJsonContextValue.Field;
import edu.stanford.nlp.sempre.interactive.VegaResources.InitialTemplate;
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
    List<InitialTemplate> initialTemplates = VegaResources.getInitialTemplates();
    int tries = 0;
    while (derivations.size() < amount && tries < opts.maxRandomTries) {
      tries++;
      // Pick a initial template
      InitialTemplate template = randomChoice(initialTemplates);
      // Create a new plot spec
      JsonNode spec = createSpecFromTemplate(template);
      if (spec == null) continue;
      LogInfo.logs("Spec: %s", spec);
      derivations.add(createInitialDeriv(spec));
    }
    LogInfo.end_track();
    ex.predDerivations = derivations;
    return ex;
  }

  // Mapping from Vega type to compatible data type
  static final Map<String, List<String>> TYPE_MAP = new HashMap<>();
  static {
    TYPE_MAP.put("nominal", Arrays.asList("string"));
    TYPE_MAP.put("ordinal", Arrays.asList("string", "integer", "number", "date"));
    TYPE_MAP.put("quantitative", Arrays.asList("integer", "number"));
    TYPE_MAP.put("temporal", Arrays.asList("date"));
  }
  static final int MAX_NOMINAL_UNIQUE_COUNT = 30;

  private JsonNode createSpecFromTemplate(InitialTemplate template) {
    ObjectMapper mapper = Json.getMapper();
    ObjectNode node = mapper.createObjectNode();
    node.put("$schema", "https://vega.github.io/schema/vega-lite/v2.json");
    node.put("mark", template.mark);
    ObjectNode allEncodings = mapper.createObjectNode();
    node.put("encoding", allEncodings);
    // Fill in the encoding
    List<Field> fields = new ArrayList<>(context.getFields());
    for (Map.Entry<String, String> templateEncoding : template.encoding.entrySet()) {
      ObjectNode encoding = mapper.createObjectNode();
      String channel = templateEncoding.getKey(), vegaType = templateEncoding.getValue(), aggregate = null;
      if (vegaType.contains("_")) {
        String[] vegaTypeTokens = vegaType.split("_");
        vegaType = vegaTypeTokens[0];
        aggregate = vegaTypeTokens[1];
      }
      if ("count".equals(vegaType)) {
        // The "count" encoding
        encoding.put("aggregate", "count");
        encoding.put("type", "quantitative");
      } else {
        // Find a suitable field to fill in
        final List<String> allowedDataTypes = TYPE_MAP.get(vegaType);
        final boolean isDiscrete = "nominal".equals(vegaType) || "ordinal".equals(vegaType);
        List<Field> suitableFields = fields.stream()
            .filter(x -> allowedDataTypes.contains(x.type)
                // If the vega type is discrete, don't use a data field with too many unique values
                // Otherwise the graph will render slowly and everything will be tiny
                && (!isDiscrete || x.uniqueCount <= MAX_NOMINAL_UNIQUE_COUNT)
                ).collect(Collectors.toList());
        if (suitableFields.isEmpty()) {
          LogInfo.logs("Wah, no good field: [%s] %s -> %s", template.mark, template.encoding, context.fields);
          return null;
        }
        Field field = randomChoice(suitableFields);
        encoding.put("field", field.name);
        if (field.probablyYears && "quantitative".equals(vegaType)) {
          // Hack: make the years spread out by making it ordinal
          vegaType = "ordinal";
          aggregate = null;
        }
        encoding.put("type", vegaType);
        if (aggregate != null)
          encoding.put("aggregate", aggregate);
        fields.remove(field);
      }
      allEncodings.put(channel, encoding);
    }
    return node;
  }

  private Derivation createInitialDeriv(JsonNode spec) {
    Derivation deriv = new Derivation.Builder()
        .formula(new ValueFormula<JsonValue>(new JsonValue(spec)))
        .value(new JsonValue(spec)).createDerivation();
    return deriv;
  }

  // ============================================================
  // Generate modifications to the current plot
  // ============================================================

  private static final List<JsonValue> smallNumbers = new ArrayList<>();
  static {
    for (int i = 1; i <= 50; i++)
      smallNumbers.add(new JsonValue(i).withSchemaType("number"));
  }

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
      List<JsonValue> possibleValues = VegaResources.getValues(path);
      for (JsonSchema schema : VegaResources.vegaSchema.schemas(path)) {
        String type = schema.schemaType();
        if ("number".equals(type))
          possibleValues.addAll(smallNumbers);
      }
      JsonValue value = randomChoice(possibleValues);
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
        Arrays.asList(
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
