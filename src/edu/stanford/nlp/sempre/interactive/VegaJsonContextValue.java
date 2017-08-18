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

  Object json;

  public Object getObject() {
    return json;
  }
  public JsonNode getJsonNode() {
    return Json.getMapper().convertValue(json, JsonNode.class);
  }

  public VegaJsonContextValue(Object jsonObj) {
    super(null, null, new ArrayList<Exchange>(), null);
    LogInfo.logs("JsonContextValue %s", Json.getMapper().convertValue(jsonObj, JsonNode.class));
    json = jsonObj;
  }

  public VegaJsonContextValue(String jsonString) {
    super(null, null, new ArrayList<Exchange>(), null);
    LogInfo.logs("JsonContextValue %s", jsonString);
    json = Json.readMapHard(jsonString);
  }

  @Override
  public String toString() {
    return Json.writeValueAsStringHard(json);
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
