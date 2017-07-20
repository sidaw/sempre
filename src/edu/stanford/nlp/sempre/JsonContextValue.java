package edu.stanford.nlp.sempre;

import java.util.ArrayList;

import com.fasterxml.jackson.databind.JsonNode;
import fig.basic.LogInfo;

public class JsonContextValue extends ContextValue {
  Object json;
  
  public Object getObject() {
    return json;
  }
  public JsonNode getJsonNode() {
    return Json.getMapper().convertValue(json, JsonNode.class);
  }
  
  public JsonContextValue(Object jsonObj) {
    super(null, null, new ArrayList<Exchange>(), null);
    LogInfo.logs("JsonContextValue %s", Json.getMapper().convertValue(jsonObj, JsonNode.class));
    json = jsonObj;
  }
  
  public JsonContextValue(String jsonString) {
    super(null, null, new ArrayList<Exchange>(), null);
    LogInfo.logs("JsonContextValue %s", jsonString);
    json = Json.readMapHard(jsonString);
  }


  @Override
  public String toString() {
    return Json.writeValueAsStringHard(json);
  }
}
