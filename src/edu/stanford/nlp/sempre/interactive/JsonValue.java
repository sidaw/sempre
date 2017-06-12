package edu.stanford.nlp.sempre.interactive;

import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.StringValue;
import edu.stanford.nlp.sempre.Value;
import fig.basic.LispTree;
/***
 * merely wraps a json object in Value
 * @author sidaw
 */
public class JsonValue extends Value {
  Object json;
  public JsonValue(Object jsonObj) {
    super();
    json = jsonObj;
  }
  @Override
  public String sortString() { return Json.writeValueAsStringHard(json); }

  @Override
  public LispTree toLispTree() {
    // TODO Auto-generated method stub
    return new StringValue(Json.writeValueAsStringHard(json)).toLispTree();
  }
  @Override
  public boolean equals(Object o) {
    // TODO Auto-generated method stub
    return false;
  }
  @Override
  public int hashCode() {
    // TODO Auto-generated method stub
    return 0;
  }
}
