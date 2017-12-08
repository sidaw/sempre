package edu.stanford.nlp.sempre.interactive;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import com.google.common.collect.Sets;
import org.testng.util.Strings;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.JsonValue;
import fig.basic.IOUtils;
import fig.basic.LogInfo;
import fig.basic.MapUtils;
import fig.basic.Option;

import java.util.concurrent.ThreadLocalRandom;


/**
 * Vega-specific code that loads the schema, colors, and generate paths and type maps
 * @author sidaw
 */

@JsonIgnoreProperties(ignoreUnknown = true)
public class VegaResources {
  public static class Options {
    @Option(gloss = "File containing the vega schema") String vegaSchema;
    @Option(gloss = "Path elements to exclude") Set<String> excludedPaths;
    @Option(gloss = "File containing all the colors") String colorFile;
    @Option(gloss = "File containing initial plot templates") String initialTemplates;
    @Option(gloss = "verbosity") int verbose = 0;
  }
  public static Options opts = new Options();
  private final Path savePath = Paths.get(JsonMaster.opts.intOutputPath, "vegaResource");

  public static VegaLitePathMatcher allPathsMatcher;
  private static List<List<String>> filteredPaths;
  private static List<JsonSchema> descendants;

  public static JsonSchema vegaSchema;

  private static Map<String, Set<String>> enumValueToTypes;
  private static Map<String, Set<List<String>>> enumValueToPaths;

  private static Set<String> colorSet;

  public static final Set<String> CHANNELS = Sets.newHashSet("x", "y", "color", "opacity", "shape", "size", "row", "column");
  public static final Set<String> MARKS = Sets.newHashSet("area", "bar", "circle", "line", "point", "rect", "rule", "square", "text", "tick");
  public static final Set<String> AGGREGATES = Sets.newHashSet("max", "mean", "min", "median", "sum");

  static class InitialTemplate {
    @JsonProperty("mark") public String mark;
    @JsonProperty("encoding") public Map<String, String> encoding;
  }
  private static List<InitialTemplate> initialTemplates;

  public VegaResources() {
    try {
      if (!Strings.isNullOrEmpty(opts.vegaSchema)) {
        LogInfo.begin_track("Loading schemas from %s", opts.vegaSchema);
        vegaSchema = JsonSchema.fromFile(new File(opts.vegaSchema));
        LogInfo.end_track();
      }

      List<JsonSchema> allDescendants = vegaSchema.descendants();
      descendants = allDescendants.stream().filter(s -> s.node().has("type")).collect(Collectors.toList());
      LogInfo.logs("Got %d descendants, %d typed", allDescendants.size(), descendants.size());

      filteredPaths = allSimplePaths(descendants);
      LogInfo.logs("Got %d distinct simple path not containing %s", filteredPaths.size(), opts.excludedPaths);
      allPathsMatcher = new VegaLitePathMatcher(filteredPaths);
      Json.prettyWriteValueHard(new File(savePath.toString()+".path_elements.json"),
          filteredPaths.stream()
          .collect(Collectors.toSet()).stream().collect(Collectors.toList()) );

      // generate valueToTypes and valueToSet, for enum types
      generateValueMaps();
      LogInfo.logs("gathering valueToTypes: %d distinct enum values", enumValueToTypes.size());
      Json.prettyWriteValueHard(new File(savePath.toString()+".enums.json"),
          enumValueToTypes.keySet().stream().collect(Collectors.toList())
      );
      Json.prettyWriteValueHard(new File(savePath.toString()+".enums-kv.json"),
          enumValueToTypes.entrySet().stream().map(e -> {
            return Lists.newArrayList(e.getKey(), e.getValue().stream().collect(Collectors.toList()));
          }).collect(Collectors.toList())
      );

      if (!Strings.isNullOrEmpty(opts.colorFile)) {
        colorSet = Json.readMapHard(String.join("\n", IOUtils.readLines(opts.colorFile))).keySet();
        LogInfo.logs("loaded %d colors from %s", colorSet.size(), opts.colorFile);
      }

      if (!Strings.isNullOrEmpty(opts.initialTemplates)) {
        initialTemplates = new ArrayList<>();
        for (JsonNode node : Json.readValueHard(String.join("\n", IOUtils.readLines(opts.initialTemplates)), JsonNode.class)) {
          initialTemplates.add(Json.getMapper().treeToValue(node, InitialTemplate.class));
        }
        LogInfo.logs("Read %d initial templates", initialTemplates.size());
      }

    } catch (Exception ex) {
      ex.printStackTrace();
      throw new RuntimeException(ex);
    }
  }

  private List<List<String>> allSimplePaths(List<JsonSchema> descendents) {
    Set<List<String>> simplePaths = descendents.stream().map(s -> s.simplePath()).collect(Collectors.toSet());
    LogInfo.logs("Got %d distinct simple paths", simplePaths.size());

    Set<List<String>> filteredPaths = descendents.stream().map(s -> s.simplePath())
        .filter(p -> p.stream().allMatch(s -> !opts.excludedPaths.contains(s)))
        .collect(Collectors.toSet());
    return Lists.newArrayList(filteredPaths);
  }

  private void generateValueMaps() {
    Set<JsonSchema> descendentsSet = descendants.stream().collect(Collectors.toSet());
    enumValueToTypes = new HashMap<>();
    enumValueToPaths = new HashMap<>();
    for (JsonSchema schema: descendentsSet) {
      if (schema.enums() != null) {
        for (String e : schema.enums()) {
          MapUtils.addToSet(enumValueToTypes, e, schema.types().get(0));
          MapUtils.addToSet(enumValueToPaths, e, schema.simplePath());
        }
      }
    }
  }

  private static boolean checkType(List<String> path, JsonValue value) {
    JsonSchema jsonSchema = VegaResources.vegaSchema;
    List<JsonSchema> pathSchemas = jsonSchema.schemas(path);
    String stringValue = value.getJsonNode().asText();

    for (JsonSchema schema : pathSchemas) {
      String valueType = value.getSchemaType();
      List<String> schemaTypes = schema.types();
      if (opts.verbose > 1)
        System.out.println(String.format("checkType: path: %s | simplePath: %s | types: %s | valueType: %s", path, schema.simplePath(), schemaTypes, valueType));
      for (String schemaType : schemaTypes) {

        List<String> simplePath = schema.simplePath();
        String last = simplePath.get(simplePath.size() - 1);

        if (schemaType.equals("string") && (last.endsWith("color") || last.endsWith("Color")
            || last.equals("fill")
            || last.equals("stroke") || last.equals("background"))) {
          if (valueType.equals("color"))
            return true;
          else return false;
        }

        if (schemaType.equals("string") && last.equals("field")) {
          if (valueType.equals("field"))
            return true;
          else return false;
        }

        if (schemaType.equals("string") && schema.isEnum()) {
          if (schema.enums().contains(stringValue))
            return true;
          else return false;
        }

        if (valueType.equals(schemaType)) {
          return true;
        }
        if (schemaType.equals(JsonSchema.NOTYPE))
          throw new RuntimeException("JsonFn: schema has no type: " + schema);
      }
    }
    return false;
  }

  public static List<JsonValue> getValues(List<String> path, JsonValue value) {
    if (value != null) {
      if (checkType(path, value)) {
        return Lists.newArrayList(value);
      } else {
        return Lists.newArrayList();
      }
    }
    List<JsonValue> values = new ArrayList<>();
    List<JsonSchema> schemas = vegaSchema.schemas(path);
    for (JsonSchema schema : schemas) {
      for (String type : schema.types()) {
        if (opts.verbose > 0)
          LogInfo.logs("getValues %s %s", type, path.toString());

        if (type.equals(JsonSchema.NOTYPE)) {
          continue;
        } else if (type.equals("string")) {

          List<String> simplePath = schema.simplePath();
          String last = simplePath.get(simplePath.size() - 1);

          if (last.endsWith("color") || last.endsWith("Color")
            || last.equals("fill")
            || last.equals("stroke") || last.equals("background")) {
            values.add(new JsonValue("red").withSchemaType("string"));
            values.add(new JsonValue("blue").withSchemaType("string"));
            values.add(new JsonValue("green").withSchemaType("string"));
          } else if (last.equals("field")) {
            values.add(new JsonValue("fieldName").withSchemaType("string"));
          } else if (schema.isEnum()) {
            values.addAll(schema.enums().stream().map(s -> new JsonValue(s).withSchemaType("enum"))
              .collect(Collectors.toList()));
          } else {
            values.add(new JsonValue("XX").withSchemaType(type));
          }
        } else if (type.equals("boolean")) {
          values.add(new JsonValue(true).withSchemaType("boolean"));
          values.add(new JsonValue(false).withSchemaType("boolean"));
        } else if (type.equals("number")) {
          values.add(new JsonValue(ThreadLocalRandom.current().nextInt(0, 100)).withSchemaType("number"));
          values.add(new JsonValue(0.1 * ThreadLocalRandom.current().nextInt(1, 10)).withSchemaType("number"));
        }
      }
    }

    if (values.size() == 0) return values;
    return Lists.newArrayList(values.get(ThreadLocalRandom.current().nextInt(values.size())));
  }

  public static Set<String> getEnumTypes(String value) {
    if (enumValueToTypes.containsKey(value)) return enumValueToTypes.get(value);
    return null;
  }

  public static Set<String> getColorSet() {
    return colorSet;
  }

  public static List<InitialTemplate> getInitialTemplates() {
    return initialTemplates;
  }
}
