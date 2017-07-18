package edu.stanford.nlp.sempre.interactive;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.testng.util.Strings;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.Lists;
import com.google.common.collect.Multimap;
import com.google.common.collect.Ordering;
import com.google.common.collect.Sets;

import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.JsonValue;
import fig.basic.IOUtils;
import fig.basic.LogInfo;
import fig.basic.MapUtils;
import fig.basic.Option;
import fig.basic.Pair;

/**
 * exposes some static vega resources
 * @author sidaw
 */

@JsonIgnoreProperties(ignoreUnknown = true)
public class VegaResources {
  public static class Options {
    @Option(gloss = "File or directory containing example vega ") List<String> vegaSpecifications;
    @Option(gloss = "File containing all valid VegaPaths") String allVegaJsonPaths;
    @Option(gloss = "File containing the vega schema") String vegaSchema;
    @Option(gloss = "File containing object values to try") String valueTemplates;
    @Option(gloss = "path elements to exclude") Set<String> excludedPaths;
  }
  public static Options opts = new Options();

  public static VegaLitePathMatcher allPathsMatcher;

  private Path savePath = Paths.get(JsonMaster.opts.intOutputPath, "PathInTemplates.txt");

  private List<List<String>> filteredPaths;

  public static ArrayList<String> templates;
  public static Map<String, String> templatesMap;

  public static JsonSchema vegaSchema;

  private static Map<String, List<JsonValue>> typeToValues;
  private static Map<String, Set<String>> valueToTypes;
  private static Map<String, Set<List<String>>> valueToPaths;

  public VegaResources() {
    try {
      if (opts.vegaSchema != null) {
        LogInfo.begin_track("Loading schemas from %s", opts.vegaSchema);
        vegaSchema = JsonSchema.fromFile(new File(opts.vegaSchema));
        LogInfo.end_track();
      }
      if (opts.vegaSpecifications != null) {
        LogInfo.begin_track("Loading examples from %s", opts.vegaSpecifications);
        processVegaTemplates();
        LogInfo.end_track();
      }

      filteredPaths = allSimplePaths();
      LogInfo.logs("Got %d distinct simple path not containing %s", filteredPaths.size(), opts.excludedPaths);
      allPathsMatcher = new VegaLitePathMatcher(filteredPaths);

      // generate valueToTypes and valueToSet
      generateValueMaps();
      LogInfo.logs("gathering valueToTypes: %d distinct enum values", valueToTypes.size());
      
    } catch (Exception ex) {
      ex.printStackTrace();
      throw new RuntimeException(ex);
    }
  }

  private List<List<String>> allSimplePaths() {
    List<JsonSchema> descendents = vegaSchema.descendents();
    Set<List<String>> simplePaths = descendents.stream().map(s -> s.simplePath()).collect(Collectors.toSet());
    LogInfo.logs("Got %d distinct simple paths", simplePaths.size());

    Set<List<String>> filteredPaths = descendents.stream().map(s -> s.simplePath())
        .filter(p -> p.stream().allMatch(s -> !opts.excludedPaths.contains(s)))
        .collect(Collectors.toSet());
    return Lists.newArrayList(filteredPaths);
  }

  private void generateValueMaps() {
    Set<JsonSchema> descendents = vegaSchema.descendents().stream().collect(Collectors.toSet());
    valueToTypes = new HashMap<>();
    valueToPaths = new HashMap<>();
    for (JsonSchema schema: descendents) {
      if (schema.enums() != null) {
        for (String e : schema.enums()) {
          MapUtils.addToSet(valueToTypes, e, schema.schemaType());
          MapUtils.addToSet(valueToPaths, e, schema.simplePath());
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
      MapUtils.addToList(typeToValues, "number", new JsonValue(42).withSchemaType("number"));
      MapUtils.addToList(typeToValues, "number", new JsonValue(312).withSchemaType("number"));
      MapUtils.addToList(typeToValues, "string", new JsonValue("randomteststring").withSchemaType("string"));

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
    String text;
    try {
      text = String.join("", IOUtils.readLines(path.getAbsolutePath()));
      templates.add(text);
      templatesMap.put(path.getPath(), text);
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
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
    if (valueToTypes.containsKey(value)) return valueToTypes.get(value);
    return null;
  }

  public static Set<List<String>> getEnumPaths(String value) {
    if (valueToPaths.containsKey(value)) return valueToPaths.get(value);
    return null;
  }

}

