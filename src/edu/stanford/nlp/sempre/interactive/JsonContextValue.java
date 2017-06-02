package edu.stanford.nlp.sempre.interactive;

import java.util.ArrayList;
import java.util.List;

import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.DateValue;
import fig.basic.LogInfo;

public class JsonContextValue extends ContextValue {
  Object json;
  public JsonContextValue(Object jsonString) {
    super(null, null, new ArrayList(), null);
    LogInfo.logs("JsonContextValue %s", jsonString);
    json = jsonString;
 }

}
