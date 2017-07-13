package edu.stanford.nlp.sempre.interactive;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.Lists;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

// TODO: handle objects that have a list of allowable types

/**
 * Created by Kelvin on 6/1/17.
 */
public class JsonSchema implements Comparable<JsonSchema> {

  public static final String NOTYPE = "notype";
  
  public static class RefResolver {
    private JsonNode rootNode;

    public RefResolver(JsonNode rootNode) {
      this.rootNode = rootNode;
    }

    public JsonNode resolve(String ref) {
      List<String> path = Arrays.asList(ref.split("/"));
      if (!path.get(0).equals("#")) {
        throw new RuntimeException("Unable to resolve reference.");
      }
      path = path.subList(1, path.size());
      JsonNode node = rootNode;
      for (String key : path) {
        node = node.get(key);
        if (node == null) {
          throw new RuntimeException(String.format("Invalid $ref: %s", ref));
        }
      }
      return node;
    }
  }

  /**
   * Load JsonSchema from file.
   */
  public static JsonSchema fromFile(File f) throws IOException {
    ObjectMapper mapper = new ObjectMapper();
    JsonNode node = mapper.readTree(f);
    List<String> schemaPath = new ArrayList<>();
    RefResolver resolver = new RefResolver(node);
    return new JsonSchema(node, "<root>", schemaPath, resolver);
  }

  private JsonNode node;  // node in the JSON schema
  private String name;  // name of the object (its key in the root object)
  private List<String> schemaPath;  // path in the JSON schema. Uniquely identifies this JsonSchema.
  private RefResolver resolver;  // used to resolve $ref references

  private JsonSchema(JsonNode node, String name, List<String> schemaPath, RefResolver resolver) {
    this.node = node;
    this.name = name;
    this.schemaPath = schemaPath;
    this.resolver = resolver;
  }

  /*
   * Basic methods
   */

  public boolean equals(Object o) {
    if (o == null) {
      return false;
    }
    if (!(o instanceof JsonSchema)) {
      return false;
    }

    JsonSchema otherSchema = (JsonSchema) o;
    return node.equals(otherSchema.node());
  }

  public int hashCode() {
    return node.hashCode();
  }

  public String toString() {
    return String.format("%s\npath: %s\ntype: %s", name(), schemaPath(), type());
  }

  @Override
  public int compareTo(JsonSchema o) {
    // sort based on schema path
    Function<List<String>, String> str = list -> String.join(", ", list);
    return str.apply(schemaPath()).compareTo(str.apply(o.schemaPath()));
  }

  /*
   * Schema properties
   */

  public JsonNode node() {
    return node;
  }

  public String name() {
    return name;
  }

  public List<String> schemaPath() {
    return schemaPath;
  }

  public String type() {
    if (!node.has("type")) {
      throw new RuntimeException("No 'type'.");
    }
    return node.get("type").asText();
  }
  
  
  private List<String> simplePath(List<String> path) {
    if (path.size() == 0) return new ArrayList<>();
    int lastInd = path.size() - 1;
    for (; lastInd > 0; lastInd--) {
      if (path.get(lastInd).startsWith("#/definitions"))
        break;
    }
    return path.subList(lastInd, path.size() ).stream()
        .filter(p -> !p.equals("items") && !p.equals("properties") && !p.startsWith("anyOf["))
        .collect(Collectors.toList());
  }
  
  // include enum types, definitions for object items
  public String richType() {
    if (!node.has("type")) {
      return NOTYPE;
    }
    String type = node.get("type").asText();
    // object types is the last object definition
    if (type.equals("object")) {
      return String.join(".", simplePath(schemaPath));
    }
    // enum types are always strings
    if (type.equals("string") && node.has("enum")) {
      return String.join(".", simplePath(schemaPath)) + ".enum";
    }
    // string types is the immediate field before
    String prev = schemaPath.get(schemaPath.size()-1);
    if (type.equals("string") && !prev.startsWith("anyOf[")) {
      return schemaPath.get(schemaPath.size()-1) + ".string";
    }
    
    return node.get("type").asText();

  }

  public List<String> enums() {
    // I'm assuming that enums are always text, although this may not be true.
    if (!node.has("enum")) {
      return null;
    }
    JsonNode enumNode = node.get("enum");
    List<String> values = new ArrayList<>();
    for (JsonNode value : enumNode) {
      values.add(value.asText());
    }
    return values;
  }

  public List<String> properties() {
    if (!type().equals("object")) {
      throw new RuntimeException("Only object can have 'properties'. This is not an object.");
    }
    if (!node.has("properties")) {
      throw new RuntimeException("Object is missing 'properties'.");
    }

    List<String> list = new ArrayList<>();
    Iterator<String> iterator = node.get("properties").fieldNames();
    iterator.forEachRemaining(list::add);
    return list;
  }

  public List<JsonSchema> schemas(String... path) {
    return schemas(Arrays.asList(path));
  }

  public List<JsonSchema> schemas(List<String> path) {
    Set<JsonSchema> schemaSet = new HashSet<>();

    if (node.has("anyOf")) {
      JsonNode anyOfNode = node.get("anyOf");
      int i = 0;
      for (JsonNode element : anyOfNode) {
        List<String> newSchemaPath = extendPath(schemaPath, String.format("anyOf[%d]", i));
        schemaSet.addAll(new JsonSchema(element, name, newSchemaPath, resolver).schemas(path));
        i += 1;
      }
    } else if (node.has("$ref")) {
      String ref = node.get("$ref").asText();
      JsonNode refNode = resolver.resolve(ref);
      List<String> newSchemaPath = extendPath(schemaPath, ref);
      schemaSet.addAll(new JsonSchema(refNode, name, newSchemaPath, resolver).schemas(path));
    } else {
      if (path.size() == 0) {
        // we've reached the target rootNode
        schemaSet.add(this);
      } else {
        // more keys left to traverse
        String type = type();
        String key = path.get(0);

        JsonSchema sub_schema = null;
        if (type.equals("array") && key.equals("items") && node.has("items")) {
          JsonNode itemsNode = node.get("items");
          List<String> newSchemaPath = extendPath(schemaPath, "items");
          sub_schema = new JsonSchema(itemsNode, "items", newSchemaPath, resolver);
        } else if (type.equals("object") && node.has("properties")) {
          JsonNode propertiesNode = node.get("properties");
          if (propertiesNode.has(key)) {
            List<String> newSchemaPath = extendPath(schemaPath, "properties", key);
            sub_schema = new JsonSchema(propertiesNode.get(key), key, newSchemaPath, resolver);
          }
        }

        if (sub_schema != null) {
          schemaSet.addAll(sub_schema.schemas(path.subList(1, path.size())));
        }
      }
    }

    List<JsonSchema> schemas = new ArrayList<>(schemaSet);
    Collections.sort(schemas);

    return schemas;
  }

  private static List<String> extendPath(List<String> path, String... extend) {
    List<String> newPath = new ArrayList<>(path);
    newPath.addAll(Arrays.asList(extend));
    return newPath;
  }
}
