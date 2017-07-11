package edu.stanford.nlp.sempre.interactive;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import edu.stanford.nlp.sempre.ActionFormula;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.Values;
import edu.stanford.nlp.sempre.ActionFormula.Mode;
import fig.basic.LispTree;
import fig.basic.LogInfo;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.util.Map.Entry;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.testng.util.Strings;

/**
 * @author sidaw
 */
public class JsonUtils  {
  public static List<String> allPaths(JsonNode node) {
    List<String> allPaths = new ArrayList<>();
    getPaths(node, "", allPaths);
    return allPaths;
  }

  private static void getPaths(JsonNode node, String prefix, List<String> paths) {
    if (node.isValueNode()) {
      paths.add(prefix); return;
    } else if (node.isArray()) {
      for (int i = 0; node.has(i); i++) {
        int childInd = i;
        getPaths(node.get(i), prefix + "[" + childInd + "]", paths);
      }
    } else if (node.isObject()) {
      Iterator<String> names = node.fieldNames();
      while (names.hasNext()) {
        String childName = names.next();
        getPaths(node.get(childName), prefix + "\t" + childName, paths);
      }
    }
  }

  public static JsonNode toJsonNode(Object jsonobj) {
    ObjectMapper mapper = new ObjectMapper();
    return mapper.convertValue(jsonobj, JsonNode.class);
  }
  public static ObjectNode toObjectNode(Object jsonobj) {
    ObjectMapper mapper = new ObjectMapper();
    return mapper.convertValue(jsonobj, ObjectNode.class);
  }

  public static void setPathValue(ObjectNode context, String path, JsonNode value) {
    List<String> jsonPath = Arrays.asList(path.split("\\."));
    List<String> objectPath = jsonPath.subList(1, jsonPath.size()-1);
    String lastPath = jsonPath.get(jsonPath.size()-1);
    ObjectNode node = context;

    for (String name : objectPath) {
      if (name.endsWith("]"))
        throw new RuntimeException("not implemented: assign value to array");
      if (!node.has(name))
        node = node.putObject(name);
      else {
        node = (ObjectNode)node.get(name);
      }
    }
    node.put(lastPath, value);
  }

  public static Example exampleFromJson(String jsonstr) {
    // avoiding the JsonCreator since lisp values are annoying
    Map<String, Object> jsonObj = Json.readMapHard(jsonstr);   
    
    return new Example((String)jsonObj.get("id"), (String)jsonObj.get("utterance"),
        new JsonContextValue(jsonObj.get("context")),
        null,
        new JsonValue(jsonObj.get("targetValue")), null); 
  }

  public static List<Example> readExamples(String path) {
    try (Stream<String> stream = Files.lines(Paths.get(path))) {
      return stream.map(JsonUtils::exampleFromJson).collect(Collectors.toList());
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }
}
