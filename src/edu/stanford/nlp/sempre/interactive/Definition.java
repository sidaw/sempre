package edu.stanford.nlp.sempre.interactive;

import java.util.List;

import edu.stanford.nlp.sempre.Derivation;
import edu.stanford.nlp.sempre.Example;

public class Definition {
  String guid; // unique id of this function predicate
  Derivation original; // this is the tree, annotated with original logical forms
  List<String> references; // how users refer to this definition
  
  public Definition(Example head, List<Derivation> chartList, Derivation body) {
  
  }
  
  public Derivation call() {
    return null;
  }
  
  public List<Derivation> callAlternatives() {
    return null;
  }
  
}
