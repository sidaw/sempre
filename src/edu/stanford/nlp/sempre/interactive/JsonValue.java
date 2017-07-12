package edu.stanford.nlp.sempre.interactive;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.std.NumberSerializers.NumberSerializer;
import com.google.common.base.Strings;

import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.StringValue;
import edu.stanford.nlp.sempre.Value;
import fig.basic.LispTree;
import fig.basic.LogInfo;
/***
 * merely wraps a json object in Value
 * @author sidaw
 */
public class JsonValue extends Value {
  JsonNode json;
  public JsonValue(JsonNode jsonNode) {
    super();
    json = jsonNode;
  }
  public JsonValue(Object jsonObj) {
    super();
    json = JsonUtils.toJsonNode(jsonObj);
    
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
}
