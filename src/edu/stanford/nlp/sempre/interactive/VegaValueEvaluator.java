package edu.stanford.nlp.sempre.interactive;

import com.fasterxml.jackson.databind.JsonNode;
import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.JsonValue;
import edu.stanford.nlp.sempre.Value;
import edu.stanford.nlp.sempre.ValueEvaluator;
import fig.basic.LogInfo;
import fig.basic.Pair;
import java.util.*;

// Give partial credit if matching key but not value
public class VegaValueEvaluator implements ValueEvaluator {
  private List<List<String>> getDiffPaths(JsonNode oldNode, JsonNode newNode) {
    List<Pair<List<String>, JsonNode>> oldLeaves = JsonUtils.allPathValues(oldNode, true);
    List<Pair<List<String>, JsonNode>> newLeaves = JsonUtils.allPathValues(newNode, true);
    List<List<String>> diff = new ArrayList<List<String>>();
    // Check all keys that were in oldLeaves
    for (Pair<List<String>, JsonNode> pair: oldLeaves) {
      JsonNode oldValue = pair.getSecond();
      JsonNode newValue = JsonUtils.getPathValue(newNode, pair.getFirst());
      if (!oldValue.equals(newValue)) {
        diff.add(pair.getFirst());
      }
    }
    // Also look for added keys in newLeaves
    for (Pair<List<String>, JsonNode> pair: newLeaves) {
      JsonNode newValue = pair.getSecond();
      JsonNode oldValue = JsonUtils.getPathValue(oldNode, pair.getFirst());
      if (oldValue == null) {
        diff.add(pair.getFirst());
      }
    }
    return diff;
  }

  public double getCompatibility(Value target, Value pred, ContextValue context) {
    if (target.equals(pred)) return 1;
    if (!(context instanceof VegaJsonContextValue)) return 0;
    if (!(target instanceof JsonValue)) return 0;
    if (!(pred instanceof JsonValue)) return 0;
    JsonNode jsonContext = ((VegaJsonContextValue) context).getJsonNode();
    JsonNode jsonTarget = ((JsonValue) target).getJsonNode();
    JsonNode jsonPred = ((JsonValue) pred).getJsonNode();
    List<List<String>> targetDiff = getDiffPaths(jsonContext, jsonTarget);
    List<List<String>> predDiff = getDiffPaths(jsonContext, jsonPred);
    //LogInfo.logs("targetDiff: %s", targetDiff);
    //LogInfo.logs("predDiff: %s", predDiff);
    for (List<String> path: targetDiff) {
      if (predDiff.contains(path)) return 0.5;
    }
    return 0;
  }
}
