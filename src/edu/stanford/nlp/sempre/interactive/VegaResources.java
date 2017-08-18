package edu.stanford.nlp.sempre.interactive;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.testng.util.Strings;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;

import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.JsonValue;
import fig.basic.IOUtils;
import fig.basic.LogInfo;
import fig.basic.MapUtils;
import fig.basic.Option;
import fig.basic.Pair;

/**
 * Vega-specific code that loads the schema, colors, and generate paths and type maps
 * @author sidaw
 */

@JsonIgnoreProperties(ignoreUnknown = true)
public class VegaResources {
  public static class Options {
    @Option(gloss = "File or directory containing example vega ") List<String> vegaSpecifications;
    @Option(gloss = "File containing all valid VegaPaths") String allVegaJsonPaths;
    @Option(gloss = "File containing the vega schema") String vegaSchema;
    @Option(gloss = "File containing object values to try") String valueTemplates;
    @Option(gloss = "Path elements to exclude") Set<String> excludedPaths;
    @Option(gloss = "File containing all the colors") String colorFile;
  }
  public static Options opts = new Options();
  private final Path savePath = Paths.get(JsonMaster.opts.intOutputPath, "vegaResource");


  public static VegaLitePathMatcher allPathsMatcher;
  private static List<List<String>> filteredPaths;
  private static List<JsonSchema> descendents;

  public static ArrayList<String> templates;
  public static Map<String, String> templatesMap;

  public static JsonSchema vegaSchema;

  private static Map<String, List<JsonValue>> typeToValues;
  private static Map<String, Set<String>> enumValueToTypes;
  private static Map<String, Set<List<String>>> enumValueToPaths;

  private static Set<String> colorSet;

  public VegaResources() {
    try {
      if (!Strings.isNullOrEmpty(opts.vegaSchema)) {
        LogInfo.begin_track("Loading schemas from %s", opts.vegaSchema);
        vegaSchema = JsonSchema.fromFile(new File(opts.vegaSchema));
        LogInfo.end_track();
      }

      List<JsonSchema> allDescendents = vegaSchema.descendents();
      descendents = allDescendents.stream().filter(s -> s.node().has("type")).collect(Collectors.toList());
      LogInfo.logs("Got %d descendents, %d typed", allDescendents.size(), descendents.size());

      if (opts.vegaSpecifications != null) {
        LogInfo.begin_track("Loading examples from %s", opts.vegaSpecifications);
        processVegaTemplates();
        LogInfo.end_track();
      }

      filteredPaths = allSimplePaths();
      LogInfo.logs("Got %d distinct simple path not containing %s", filteredPaths.size(), opts.excludedPaths);
      allPathsMatcher = new VegaLitePathMatcher(filteredPaths);
      Json.prettyWriteValueHard(new File(savePath.toString()+".path_elements.json"),
          filteredPaths.stream().flatMap(List::stream)
          .collect(Collectors.toSet()).stream().collect(Collectors.toList()) );

      // generate valueToTypes and valueToSet
      generateValueMaps();
      LogInfo.logs("gathering valueToTypes: %d distinct enum values", enumValueToTypes.size());
      Json.prettyWriteValueHard(new File(savePath.toString()+".enums.json"),
          enumValueToTypes.keySet().stream().collect(Collectors.toList())
      );

      if (!Strings.isNullOrEmpty(opts.colorFile)) {
        colorSet = Json.readMapHard(String.join("\n", IOUtils.readLines(opts.colorFile))).keySet();
        LogInfo.logs("loaded %d colors from %s", colorSet.size(), opts.colorFile);
      }

    } catch (Exception ex) {
      ex.printStackTrace();
      throw new RuntimeException(ex);
    }
  }

  private List<List<String>> allSimplePaths() {
    Set<List<String>> simplePaths = descendents.stream().map(s -> s.simplePath()).collect(Collectors.toSet());
    LogInfo.logs("Got %d distinct simple paths", simplePaths.size());

    Set<List<String>> filteredPaths = descendents.stream().map(s -> s.simplePath())
        .filter(p -> p.stream().allMatch(s -> !opts.excludedPaths.contains(s)))
        .collect(Collectors.toSet());
    return Lists.newArrayList(filteredPaths);
  }

  private void generateValueMaps() {
    Set<JsonSchema> descendentsSet = descendents.stream().collect(Collectors.toSet());
    enumValueToTypes = new HashMap<>();
    enumValueToPaths = new HashMap<>();
    for (JsonSchema schema: descendentsSet) {
      if (schema.enums() != null) {
        for (String e : schema.enums()) {
          MapUtils.addToSet(enumValueToTypes, e, schema.schemaType());
          MapUtils.addToSet(enumValueToPaths, e, schema.simplePath());
        }
      }
    }
  }


  private void processVegaTemplates() {
    LogInfo.begin_track("processVegaTemplates");
    templates = new ArrayList<>();
    templatesMap = new HashMap<String,String>();
    for (String path : opts.vegaSpecifications) {
      File file = new File(path);
      if (file.isFile() && file.getName().endsWith(".json"))
        load(file);
      else {
        for (final File fileEntry : file.listFiles()) {
          if (fileEntry.getName().endsWith(".json")) {
            load(fileEntry);
          }
        }
      }
    }

    List<String> allPaths = new ArrayList<>();
    List<Pair<List<String>, JsonNode>> allPathValues = new ArrayList<>();

    for (String json : templates) {
      allPathValues.addAll(JsonUtils.allPathValues(JsonUtils.toJsonNode(Json.readMapHard(json))));
    }

    {
      typeToValues = new HashMap<>();
      PrintWriter writer = IOUtils.openOutHard(savePath.toString());
      for (Pair<List<String>, JsonNode> pathValue: allPathValues) {
        List<String> path = pathValue.getFirst();
        JsonNode value = pathValue.getSecond();
        try {
          for (JsonSchema schema: vegaSchema.schemas(path)) {
            String type = schema.schemaType();
            if (type.equals("null") || type.equals("number") || type.equals("string")
                || type.endsWith(".string") || type.equals("boolean") || type.equals("array")) continue;
            MapUtils.addToList(typeToValues, type, new JsonValue(value).withSchemaType(type));
            writer.println( schema.schemaType() + "\t" + path + "\t" + value);
          }
        } catch (RuntimeException ex) {
          LogInfo.logs("VegaResource %s %s", path, ex);
          ex.printStackTrace();
        }
      }

      // put in a few values for very general types
      MapUtils.addToList(typeToValues, "boolean", new JsonValue(true).withSchemaType("boolean"));
      MapUtils.addToList(typeToValues, "boolean", new JsonValue(false).withSchemaType("boolean"));
      MapUtils.addToList(typeToValues, "number", new JsonValue(0).withSchemaType("number"));
      MapUtils.addToList(typeToValues, "number", new JsonValue(100).withSchemaType("number"));
      MapUtils.addToList(typeToValues, "string", new JsonValue("hello").withSchemaType("string"));

      Json.prettyWriteValueHard(new File(savePath.toString()+".json"),
          typeToValues.entrySet().stream().map(e -> {
            return Lists.newArrayList(e.getKey(),
                e.getValue().stream().map(jv -> jv.getJsonNode()).collect(Collectors.toList()));
          }).collect(Collectors.toList()) );
      writer.close();
    }

    LogInfo.logs("got %d paths, %d unique", allPaths.size(), Sets.newHashSet(allPaths).size());
    LogInfo.end_track();
  }

  private void load(File path) {
    LogInfo.logs("Reading example template from %s", path);
    String text = String.join("\n", IOUtils.readLinesHard(path.getAbsolutePath()));
    templates.add(text);
    templatesMap.put(path.getPath(), text);
  }

  public static List<JsonValue> getValues(List<String> path) {
    List<JsonSchema> schemas = vegaSchema.schemas(path);
    List<JsonValue> values = new ArrayList<>();
    for (JsonSchema schema : schemas) {
      String type = schema.schemaType();
      if (!type.equals(JsonSchema.NOTYPE) && typeToValues.containsKey(type))
        values.addAll(typeToValues.get(schema.schemaType()));
    }
    // LogInfo.logs("VegaResources.getValues %s %s", path, values);
    return values;
  }

  public static Set<String> getEnumTypes(String value) {
    if (enumValueToTypes.containsKey(value)) return enumValueToTypes.get(value);
    return null;
  }

  public static Set<List<String>> getEnumPaths(String value) {
    if (enumValueToPaths.containsKey(value)) return enumValueToPaths.get(value);
    return null;
  }

  public static Set<String> getColorSet() {
    return colorSet;
  }
}

