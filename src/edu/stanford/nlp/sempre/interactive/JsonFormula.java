package edu.stanford.nlp.sempre.interactive;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.google.common.base.Function;
import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.PrimitiveFormula;
import edu.stanford.nlp.sempre.StringValue;
import fig.basic.LispTree;
import fig.basic.LogInfo;

/**
 * Just wraps a json object in
 * 
 * @author sidaw
 */
public class JsonFormula extends Formula {
  public Map<String, Object> root;
  public String type;
  
  @Override
  public String toString() {
    return Json.writeValueAsStringHard(root);
  }
  
  public List<JsonFormula> substitute(Formula target) {

    List<JsonFormula> candidates = new ArrayList<>();
    
    // HACK
    Object javaObj = Formulas.getDouble(target);
    if ( javaObj.equals(Double.NaN)) {
      javaObj = Formulas.getString(target);
      if (javaObj == null) {
        return candidates;
      }
    }
    
    List<String> path = new ArrayList<>();
    recurseSubstitute(path, root, javaObj, candidates);
    LogInfo.logs("got candidates %s for %s", candidates, javaObj);
    return candidates;
  }
 
  // should use schema
  private boolean check(List<String> path, Object candidate) {
    LogInfo.logs("checking %s (%s) at %s", candidate, candidate.getClass(), path);
    if (path.get(path.size()-1).equals("mark")) {
      ArrayList<String> marks = Lists.newArrayList("area",
          "bar",
          "box-plot",
          "circle",
          "error-bar",
          "line",
          "point",
          "rect",
          "rule",
          "square",
          "text",
          "tick");
      if (marks.contains(candidate)) return true;
    }
    if (path.get(path.size()-1).equals("height") || path.get(path.size()-1).equals("width")) {
      
      if (candidate instanceof Double) return true;
    }
    return false;
  }
  
  private void recurseSubstitute(List<String> path, Object node, Object candidate, List<JsonFormula> candidates) {
    if (node instanceof Map) {
      @SuppressWarnings("unchecked")
      Map<String, Object> mapNode = (Map<String, Object>)node;
      for (Map.Entry<String,Object> entry : mapNode.entrySet()) {
        List<String> newpath = new ArrayList<>(path);
        newpath.add(entry.getKey());
        if (check(newpath, candidate)) {
          Object original = entry.getValue();
          entry.setValue(candidate);
          String result = Json.writeValueAsStringHard(root);
          LogInfo.logs("subing %s at %s", candidate, newpath);
          candidates.add(new JsonFormula(result));
          entry.setValue(original);
        } else {
          recurseSubstitute(newpath, entry.getValue(), candidate, candidates);
        }
      }
    } else if (node instanceof List) {
      List<Object> listNode = (List<Object>)node;
      for (Object child : listNode) {
        recurseSubstitute(path, child, candidate, candidates);
      }
    }
  }

  public JsonFormula(String str) {
    root = Json.readMapHard(str);
  }

  @Override
  public LispTree toLispTree() {
    return new StringValue(this.toString()).toLispTree();
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

  @Override
  public void forEach(Function<Formula, Boolean> func) {
    // TODO Auto-generated method stub
    
  }

  @Override
  public Formula map(Function<Formula, Formula> func) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public List<Formula> mapToList(Function<Formula, List<Formula>> func, boolean alwaysRecurse) {
    // TODO Auto-generated method stub
    return null;
  }
}
