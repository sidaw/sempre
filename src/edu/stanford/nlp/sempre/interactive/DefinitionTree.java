package edu.stanford.nlp.sempre.interactive;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.*;
import fig.basic.LogInfo;

@JsonIgnoreProperties(ignoreUnknown = true)
public class DefinitionTree {
  @JsonProperty
  String symbol;
  @JsonProperty List<String> head;  
  @JsonProperty List<List<Object>> body = new ArrayList<>();
  @JsonProperty
  List<List<String>> RHSs = new ArrayList<>();
  
  public DefinitionTree(String symbol, List<String> head, List<Derivation> bodyDeriv, List<Rule> inducedRules) {
    this.head = head;
    this.symbol = symbol;
    
    for (Derivation d : bodyDeriv) {
      List<Tag> tags = new ArrayList<>();
      tagDerivation(d, tags);
      Collections.sort(tags);
      List<Object> taggedUtt = new ArrayList<>(d.grammarInfo.tokens);
      for (Tag tag : tags) {
        List<String> tagged = Lists.newArrayList(tag.symbol);
        tagged.addAll(d.grammarInfo.tokens.subList(tag.start, tag.end));

        LogInfo.logs("DefinitionTree utt: %s tag: %s tags: %s", taggedUtt, tag, tags);
        for (int i = tag.start; i< tag.end; i++) {
          taggedUtt.set(i, null);
        }
        taggedUtt.set(tag.start, tagged);
      }
      taggedUtt.removeIf(t -> t==null);
      body.add(taggedUtt);
    }
    
    for (Rule rule : inducedRules) {
      RHSs.add(rule.rhs);
    }
  }
  
  private void tagDerivation(Derivation deriv, List<Tag> tags) {
    if (deriv.rule == null) {
      tags.add(new Tag(0, deriv.grammarInfo.tokens.size(), "no_match"));
      return;
    }
    if (deriv.allAnchored()) return;
    if (deriv.rule.isInduced()) {
      tags.add(new Tag(deriv));
      return;
    }
    for(Derivation d : deriv.children) {
      tagDerivation(d, tags);
    }
  }
  
  /**
   * An example:
   * {id:"monster_and_3_dancers",
   * head:"monster and 3 dancers",
   * RHSs:["",..],
   * body:[
   * [["id_add_green_monster", "add", "red", "monster"]],
   * ["repeat","3",["id_add_dancer", "add", "dancer"]]
   * ]
   * }
   * @return
   */
  public String toJson() {
    return Json.writeValueAsStringHard(this);
  }
}

class Tag implements Comparable<Tag> {
  public Tag(int start, int end, String symbol) {
    this.start = start;
    this.end = end;
    this.symbol = symbol;
  }
  @Override
  public String toString() {
    return "Tag [start=" + start + ", end=" + end + ", symbol=" + symbol + "]";
  }
  public Tag(Derivation d) {
    this.start = d.start;
    this.end = d.end;
    this.symbol = d.rule.source.defId;
  }
  int start; int end;
  String symbol;
  @Override
  public int compareTo(Tag o) {
    if (this.start < o.start) return -1;
    if (this.start > o.start) return 1;
    return 0;
  }
  
}