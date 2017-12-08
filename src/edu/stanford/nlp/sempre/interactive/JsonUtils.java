package edu.stanford.nlp.sempre.interactive;

import com.fasterxml.jackson.core.JsonProcessingException;
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
import fig.basic.Pair;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.util.Map.Entry;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.testng.collections.Lists;
import org.testng.util.Strings;

/**
 * @author sidaw
 */
public class JsonUtils  {
  
  public static List<Pair<List<String>, JsonNode>> allPathValues(JsonNode node, boolean leavesOnly) {
    List<Pair<List<String>, JsonNode>> allPaths = new ArrayList<>();
    getPaths(node, new ArrayList<>(), allPaths, leavesOnly);
    return allPaths;
  }
  public static List<Pair<List<String>, JsonNode>> allPathValues(JsonNode node) {
    return allPathValues(node, false);
  }
  
  private static List<String> extendPath(List<String> path, String... extend) {
    List<String> newPath = new ArrayList<>(path);
    newPath.addAll(Arrays.asList(extend));
    return newPath;
  }

  private static void getPaths(JsonNode node, List<String> path, List<Pair<List<String>, JsonNode>> paths, boolean leavesOnly) {
    if (!leavesOnly)
      paths.add(new Pair<>(path, node));
    if (node.isValueNode()) {
      if (leavesOnly)
        paths.add(new Pair<>(path, node));
      return;
    } else if (node.isArray()) {
      for (int i = 0; node.has(i); i++) {
        int childInd = i;
        getPaths(node.get(i), extendPath(path, "[" + childInd + "]"), paths);
      }
    } else if (node.isObject()) {
      Iterator<String> names = node.fieldNames();
      while (names.hasNext()) {
        String childName = names.next();
        getPaths(node.get(childName), extendPath(path, childName), paths, leavesOnly);
      }
    }
  }

  private static void getPaths(JsonNode node, List<String> path, List<Pair<List<String>, JsonNode>> paths) {
    getPaths(node, path, paths, false);
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

  public static JsonNode getPathValue(JsonNode context, String path) {
    List<String> jsonPath = Arrays.asList(path.split("\\."));
    List<String> objectPath = jsonPath.subList(1, jsonPath.size());
    return getPathValue(context, jsonPath);
  }

  public static JsonNode getPathValue(JsonNode context, List<String> objectPath) {
    JsonNode node = context;
    for (String name : objectPath) {
      if (node == null) return null;
      if (name.endsWith("]")) {
        node = node.get(Integer.parseInt(name.substring(1, name.length() - 1)));
      } else {
        node = node.get(name);
      }
    }
    return node;
  }
}
