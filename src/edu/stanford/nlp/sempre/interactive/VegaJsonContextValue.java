package edu.stanford.nlp.sempre.interactive;

import java.util.*;

import com.fasterxml.jackson.databind.JsonNode;

import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.Json;
import fig.basic.LogInfo;
import fig.basic.MapUtils;

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
//    LogInfo.logs("JsonContextValue %s", jsonNode);
  }

  public VegaJsonContextValue(String jsonString) {
    super(null, null, new ArrayList<Exchange>(), null);
    jsonNode = Json.readValueHard(jsonString, JsonNode.class);
//    LogInfo.logs("JsonContextValue %s", jsonNode);
  }

  @SuppressWarnings("unchecked")
  public static VegaJsonContextValue fromClientRequest(Map<String, Object> kv) {
    VegaJsonContextValue context = new VegaJsonContextValue(kv.get("context"));
    if (kv.containsKey("schema"))
      context.setFields((Map<String, Map<String, Object>>) kv.get("schema"));
    return context;
  }

  /**
   * Get the whole JSON.
   */
  public JsonNode getJsonNode() {
    return jsonNode;
  }

  /**
   * Get a fresh copy of the whole JSON.
   */
  public JsonNode cloneJsonNode() {
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
    final String name, type;
    final int uniqueCount, allCount;
    final boolean probablyYears;

    public Field(Map<String, Object> schemaItem) {
      this.name = (String) schemaItem.get("name");
      this.type = (String) schemaItem.get("type");
      this.uniqueCount = (int) MapUtils.get(schemaItem, "uniqueCount", -1);
      this.allCount = (int) MapUtils.get(schemaItem, "allCount", -1);
      this.probablyYears = (boolean) MapUtils.get(schemaItem, "probablyYears", false);
    }

    public String getName() { return name; }
    public String getType() { return type; }
    public int getAllCount() { return allCount; }
    public int getUniqueCount() { return uniqueCount; }
    public double getCountRatio() { return uniqueCount * 1. / allCount; }
    public String toString() { return name + "(" + type + ")"; }
  }

  protected Map<String, Field> fields;

  public VegaJsonContextValue setFields(Map<String, Map<String, Object>> schema) {
    fields = new HashMap<>();
    for (Map<String, Object> schemaItem : schema.values()) {
      if ("_id".equals(schemaItem.get("name"))) continue;     // Ignore dummy field
      Field field = new Field(schemaItem);
      fields.put(field.name, field);
    }
    for (Field f : fields.values()) {
      LogInfo.logs("Field %s (%s)", f.name, f.type);
    }
    return this;
  }

  public Collection<Field> getFields() {
    return fields == null? new ArrayList<>() : fields.values();
  }

  public Field getField(String name) {
    return fields.get(name);
  }

}
