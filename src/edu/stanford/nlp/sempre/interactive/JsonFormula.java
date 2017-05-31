package edu.stanford.nlp.sempre.interactive;

import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.google.common.base.Function;
import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.PrimitiveFormula;
import fig.basic.LispTree;

/**
 * Represent a Json object
 * 
 * @author sidaw
 */
public class JsonFormula extends PrimitiveFormula {
  public Map<String, Object> json;
  
  @Override
  public String toString() {
    return Json.writeValueAsStringHard(json);
  }

  public JsonFormula(String str) {
    json = Json.readMapHard(str);
  }
  
  @Override
  public LispTree toLispTree() {
    return null;
  }

  @Override
  public boolean equals(Object o) {
    // TODO Auto-generated method stub
    return false;
  }

  @Override
  public int computeHashCode() {
    // TODO Auto-generated method stub
    return 0;
  }
}
