package edu.stanford.nlp.sempre.interactive;

import java.util.*;

import edu.stanford.nlp.sempre.JsonContextValue;
import fig.basic.LogInfo;

/**
 * A wrapper around JsonContextValue. Contains more information specific to vega-lite.
 *
 * @author ppasupat
 */
public class VegaJsonContextValue extends JsonContextValue {

  public VegaJsonContextValue(Object jsonObj) {
    super(jsonObj);
  }
  public VegaJsonContextValue(String jsonString) {
    super(jsonString);
  }
  public static VegaJsonContextValue wrap(JsonContextValue context) {
    if (context instanceof VegaJsonContextValue)
      return (VegaJsonContextValue) context;
    return new VegaJsonContextValue(context.getObject());
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
