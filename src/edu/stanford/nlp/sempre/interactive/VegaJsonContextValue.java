package edu.stanford.nlp.sempre.interactive;

import java.util.*;

import com.fasterxml.jackson.databind.JsonNode;

import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.Json;
import fig.basic.LogInfo;

/**
 * Vega-lite JSON definition for a plot.
 *
 * @author sidaw, ppasupat
 */
public class VegaJsonContextValue extends ContextValue {

  final JsonNode jsonNode;

  public VegaJsonContextValue(Object jsonObj) {
    super(null, null, new ArrayList<Exchange>(), null);
    jsonNode = Json.getMapper().convertValue(jsonObj, JsonNode.class);
    LogInfo.logs("JsonContextValue %s", jsonNode);
  }

  public VegaJsonContextValue(String jsonString) {
    super(null, null, new ArrayList<Exchange>(), null);
    jsonNode = Json.readValueHard(jsonString, JsonNode.class);
    LogInfo.logs("JsonContextValue %s", jsonNode);
  }

  @SuppressWarnings("unchecked")
  public static VegaJsonContextValue fromClientRequest(Map<String, Object> kv) {
    VegaJsonContextValue context = new VegaJsonContextValue(kv.get("context"));
    if (kv.containsKey("schema"))
      context.setFields((Map<String, Map<String, String>>) kv.get("schema"));
    return context;
  }

  /**
   * Get a fresh copy of the whole JSON.
   */
  public JsonNode getJsonNode() {
    return jsonNode.deepCopy();
  }

  @Override
  public String toString() {
    return jsonNode.toString();
  }

  public boolean isInitialContext() {
    return jsonNode.size() == 0 || jsonNode.has("initialContext");
  }

  // ============================================================
  // Fields
  // ============================================================

  public static class Field {
    String name, type;

    public Field(String name, String type) {
      this.name = name;
      this.type = type;
    }

    public String getName() { return name; }
    public String getType() { return type; }
  }

  List<Field> fields;

  public VegaJsonContextValue setFields(Map<String, Map<String, String>> schema) {
    fields = new ArrayList<>();
    for (Map<String, String> schemaItem : schema.values()) {
      if ("_id".equals(schemaItem.get("name"))) continue;     // Ignore dummy field
      fields.add(new Field(schemaItem.get("name"), schemaItem.get("type")));
    }
    for (Field f : fields) {
      LogInfo.logs("Field %s (%s)", f.name, f.type);
    }
    return this;
  }

  public List<Field> getFields() {
    return fields;
  }

}
