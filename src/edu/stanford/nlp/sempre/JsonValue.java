package edu.stanford.nlp.sempre;

import com.fasterxml.jackson.databind.JsonNode;
import fig.basic.LispTree;

/***
 * merely wraps a json object in Value
 * @author sidaw
 */
public class JsonValue extends Value {
  JsonNode json;
  String richType = "notype";
  
  public JsonNode getJsonNode() {
    return json;
  }
  
  public JsonValue(JsonNode jsonNode) {
    super();
    json = jsonNode;
  }
  
  public JsonValue withType(String type) {
    this.richType = type;
    return this;
  }
  
  public JsonValue(Object jsonObj) {
    super();
    json = Json.getMapper().convertValue(jsonObj, JsonNode.class);
  }
  
  @Override
  public String sortString() { return Json.writeValueAsStringHard(json); }
  @Override
  public String toString() {
    // TODO Auto-generated method stub
    return sortString();
  }
  @Override
  public LispTree toLispTree() {
    LispTree tree = LispTree.proto.newList();
    tree.addChild("json");
    tree.addChild(Json.writeValueAsStringHard(json));
    tree.addChild(this.richType);
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

  public String getRichType() {
    return richType;
  }
}
