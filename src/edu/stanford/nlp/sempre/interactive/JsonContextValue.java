package edu.stanford.nlp.sempre.interactive;

import java.util.ArrayList;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.Json;
import fig.basic.LogInfo;

public class JsonContextValue extends ContextValue {
  Object json;
  
  public JsonContextValue(Object jsonObj) {
    super(null, null, new ArrayList<Exchange>(), null);
    LogInfo.logs("JsonContextValue %s", JsonUtils.toJsonNode(jsonObj));
    json = jsonObj;
  }
  
  public JsonContextValue(String jsonString) {
    super(null, null, new ArrayList<Exchange>(), null);
    LogInfo.logs("JsonContextValue %s", jsonString);
    json = Json.readMapHard(jsonString);
  }

  public static JsonContextValue defaultContext() {
    return new JsonContextValue(Json.readMapHard((String)VegaResources.templates.get(0)));
  }

  @Override
  public String toString() {
    return Json.writeValueAsStringHard(json);
  }
}
