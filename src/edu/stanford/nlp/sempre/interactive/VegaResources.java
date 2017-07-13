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
  }
  public static Options opts = new Options();

  public static VegaLitePathMatcher allPathsMatcher;
  public static VegaLitePathMatcher templatesPathsMatcher;

  private Path savePath = Paths.get(JsonMaster.opts.intOutputPath, "PathInTemplates.txt");

  public static ArrayList<String> templates;
  public static Map<String, String> templatesMap;

  public static JsonSchema vegaSchema;

  private static Map<String, List<JsonValue>> typeToValues;

  public static List<JsonValue> getValues(List<String> path) {
    List<JsonSchema> schemas = vegaSchema.schemas(path);
    List<JsonValue> values = new ArrayList<>();
    for (JsonSchema schema : schemas) {
      String type = schema.richType();
      if (!type.equals(JsonSchema.NOTYPE) && typeToValues.containsKey(type))
        values.addAll(typeToValues.get(schema.richType()));
    }
    // LogInfo.logs("VegaResources.getValues %s %s", path, values);
    return values;
  }

  public static Set<String> getValueTypes(String pattern) {
    return typeToValues.keySet();
  }

  public VegaResources() {
    try {
      if (opts.vegaSchema != null) {
        vegaSchema = JsonSchema.fromFile(new File(opts.vegaSchema));
      }

      if (opts.vegaSpecifications != null) {
        processVegaTemplates();
      }

      if (opts.allVegaJsonPaths != null) {
        LogInfo.logs("VegaResources loading possible paths");
        allPathsMatcher = new VegaLitePathMatcher(opts.allVegaJsonPaths);
        LogInfo.logs("loaded %d keys", allPathsMatcher.pathKeys().size());
      }
    }
    catch (IOException ex) {
      ex.printStackTrace();
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
            String type = schema.richType();
            MapUtils.addToList(typeToValues, type, new JsonValue(value).withType(type));
            writer.println( schema.richType() + "\t" + path + "\t" + value);
          }
        } catch (RuntimeException ex) {
          LogInfo.logs("VegaResource %s %s", path, ex);
          ex.printStackTrace();
        }
      }
      Json.prettyWriteValueHard(new File(savePath.toString()+".json"), typeToValues);
      writer.close();
    }

    LogInfo.logs("got %d paths, %d unique", allPaths.size(), Sets.newHashSet(allPaths).size());
    LogInfo.end_track();
  }

  private void load(File path) {
    LogInfo.logs("Reading template from %s", path);
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

  public static List<JsonValue> allValues() {
    // TODO Auto-generated method stub
    return null;
  }
}

