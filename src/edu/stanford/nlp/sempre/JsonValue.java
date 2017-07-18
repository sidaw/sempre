package edu.stanford.nlp.sempre;

import java.util.Set;

import com.fasterxml.jackson.databind.JsonNode;

import fig.basic.LispTree;

/***
 * merely wraps a json object in Value
 * also stores the type
 * @author sidaw
 */
public class JsonValue extends Value {
  JsonNode json;
  String schemaType = "notype";
  String jsonType = "string";
  Set<String> schemaTypes;
  
  public JsonNode getJsonNode() {
    return json;
  }
  
  public JsonValue(JsonNode jsonNode) {
    super();
    json = jsonNode;
    inferJsonType();
  }
  
  public JsonValue withSchemaType(String type) {
    this.schemaType = type;
    return this;
  }
  
  private void inferJsonType() {
    this.jsonType = json.getNodeType().toString().toLowerCase();
  }
  
  public JsonValue(Object jsonObj) {
    super();
    json = Json.getMapper().convertValue(jsonObj, JsonNode.class);
  }
  
  @Override
  public String sortString() { return Json.writeValueAsStringHard(json); }
  @Override
  public String toString() {
    return sortString();
  }
  @Override
  public LispTree toLispTree() {
    LispTree tree = LispTree.proto.newList();
    tree.addChild("json");
    tree.addChild(Json.writeValueAsStringHard(json));
    tree.addChild(this.schemaType);
    return tree;
  }
  @Override
  public boolean equals(Object o) {
    if (! (o instanceof JsonValue) )
      return false;
    return this.json.equals(((JsonValue)o).json);
  }
  @Override
  public int hashCode() {
    // TODO Auto-generated method stub
    return 0;
  }

  public String getSchemaType() {
    return schemaType;
  }
}
