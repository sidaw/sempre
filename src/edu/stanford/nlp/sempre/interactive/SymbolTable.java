package edu.stanford.nlp.sempre.interactive;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.common.base.Strings;
import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.*;
import edu.stanford.nlp.sempre.SimpleLexicon.Options;
import fig.basic.LispTree;
import fig.basic.LogInfo;
import fig.basic.MapUtils;
import fig.basic.Option;

/**
 * Stores mappings of symbols to formula
 * keep track of unique names and trigger names which is used by the lexicon
 * contains utility used SubFn and possibly sub formula
 * @author sidaw
 */

@JsonIgnoreProperties(ignoreUnknown = true)
public class SymbolTable {
  public static class Options {
    @Option(gloss = "Path to load definitions from") List<String> inPaths;
  }
  public static Options opts = new Options();
  
  @JsonProperty
  Map<String, List<Entry>> symbolMap;
  static SymbolTable symbolTable;
  
  // singleton symbol table
  public static SymbolTable singleton() {
    if (symbolTable == null) {
      symbolTable = new SymbolTable();
    }
    return symbolTable;
  }
  
  private SymbolTable() {
    symbolMap = new LinkedHashMap<>();
    if (opts.inPaths != null) {
      for (String path : opts.inPaths) loadSymbols(path);
    }
  }
  
  private void loadSymbols(String path) {
    LogInfo.logs("Reading SymbolTable from %s", path);
    Iterator<LispTree> trees = LispTree.proto.parseFromFile(path);
    while (trees.hasNext()) {
      LispTree tree = trees.next();
      ActionFormula f = (ActionFormula)Formulas.fromLispTree(tree);
      Value method = ((ValueFormula) f.args.get(0)).value;
      String id = ((NameValue) method).id;
      Formula body = f.args.get(1);
      addSymbol(id, body);
    }
  }
  
  public synchronized List<Entry> getEntries(String head) {
    List<Entry> entries = MapUtils.get(symbolMap, head, new ArrayList<>());
    return entries;
  }
  
  @SuppressWarnings({ "unchecked", "rawtypes" })
  // (:: name id)
  public synchronized Formula expand(Formula f) {
    ActionFormula actionFormula = (ActionFormula) f;
    if (actionFormula.mode != ActionFormula.Mode.defined)
      return actionFormula; // nothing to expand
    Value method = ((ValueFormula) actionFormula.args.get(0)).value;
    String head = ((NameValue) method).id;
    
    // maybe annotated with a concrete formula
    if (actionFormula.args.get(1) instanceof ActionFormula) {
      return actionFormula.args.get(1);
    }
    int id = 0; // maybe take another id argument
    if (actionFormula.args.size() > 1) {
      id = Integer.parseInt(((ValueFormula<NameValue>)actionFormula.args.get(1)).value.id);
    }
    return symbolTable.getFormulaById(head, id);
  }
  public synchronized Formula getFormulaById(String head, int index) {
    List<Entry> entries = MapUtils.get(symbolMap, head, new ArrayList<>());
    return entries.stream().filter(e -> e.id == index).findFirst().get().formula;
  }
  
  public synchronized void addSymbol(String head, Formula formula) {
    LogInfo.logs("SymbolTable.addSymbol arguments of %s are %s", formula, getArgs(formula));
    List<Entry> entries = MapUtils.getMut(symbolMap, head, new ArrayList<>());
    int id = entries.size();
    entries.add(new Entry(head, id, formula));
  }
  
  private static List<Formula> typeMatch(Formula f) {
    if (f instanceof ActionFormula && ((ActionFormula)f).mode==ActionFormula.Mode.label)
      return new ArrayList<>();
    String type = DALExecutor.getType(f);
    if (type == null)
      return new ArrayList<>();
    return Lists.newArrayList(f);
  }
  
  private static Set<Formula> getArgs(Formula func) {
    // primitive substitution
    return (func.mapToList(f -> typeMatch(f), false)).stream().collect(Collectors.toSet());
  }
  
  // the list of all formulas that can be substituted in a given formula
  public static List<Formula> getCandidates(Formula funcFormula, Formula argFormula) {
    return getArgs(funcFormula).stream().filter(f -> 
      DALExecutor.getType(f).equals(DALExecutor.getType(argFormula))
    ).collect(Collectors.toList());
    // best if we can sort according to score here
  }
  
  public static class Entry {
    String head;
    int id;
    Formula formula;
    Set<Formula> args;
    public Entry(String head, int id, Formula formula) {
      this.head = head;
      this.id = id;
      this.formula = formula;
      this.args = getArgs(this.formula);
    }
  }

  public Formula substitute(Formula func, Formula source, Formula target) {
    return func.map(s -> {
      if (s.equals(source))
        return target;
      else return null;
    });
  }
}

