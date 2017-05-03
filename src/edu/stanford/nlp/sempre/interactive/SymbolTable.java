package edu.stanford.nlp.sempre.interactive;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.*;
import fig.basic.LogInfo;
import fig.basic.MapUtils;

/**
 * Stores mappings of symbols to formula
 * keep track of unique names and trigger names which is used by the lexicon
 * contains utility used SubFn and possibly sub formula
 * @author sidaw
 */

@JsonIgnoreProperties(ignoreUnknown = true)
public class SymbolTable {
  @JsonProperty
  Map<String, List<SymbolEntry>> symbolMap;
  static SymbolTable symbolTable = null;
  
  // singleton symbol table
  public static SymbolTable getSymbolTable() {
    if (symbolTable == null) {
      symbolTable = new SymbolTable();
    }
    return symbolTable;
  }
  
  private SymbolTable() {
    symbolMap = new LinkedHashMap<>();
  }
  
  public synchronized Stream<Formula> getEntryStream(String head) {
    List<SymbolEntry> entries = MapUtils.get(symbolMap, head, new ArrayList<>());
    return entries.stream().map(e -> e.formula);
  }
  
  @SuppressWarnings({ "unchecked", "rawtypes" })
  // (:: name id)
  public synchronized Formula expand(Formula f) {
    ActionFormula actionFormula = (ActionFormula) f;
    if (actionFormula.mode != ActionFormula.Mode.defined)
      return actionFormula; // nothing to expand
    Value method = ((ValueFormula) actionFormula.args.get(0)).value;
    String head = ((NameValue) method).id;
    int id = 0; // maybe take another id argument
    if (actionFormula.args.size() > 1) {
      id = Integer.parseInt(((ValueFormula<NameValue>)actionFormula.args.get(1)).value.id);
    }
    return symbolTable.getFormulaById(head, id);
  }
  public synchronized Formula getFormulaById(String head, int index) {
    List<SymbolEntry> entries = MapUtils.get(symbolMap, head, new ArrayList<>());
    return entries.stream().filter(e -> e.id == index).findFirst().get().formula;
  }
  
  public synchronized void addSymbol(String head, Formula formula) {
    List<SymbolEntry> entries = MapUtils.getMut(symbolMap, head, new ArrayList<>());
    int id = entries.size();
    entries.add(new SymbolEntry(head, id, formula));
  }
  
  private List<Formula> typeMatch(Formula f) {
    String type = DALExecutor.getType(f);
    if (type == null)
      return new ArrayList<>();
    return Lists.newArrayList(f);
  }
  
  private Set<Formula> getArgs(Formula func) {
    // primitive substitution
    return (func.mapToList(f -> typeMatch(f), false)).stream().collect(Collectors.toSet());
  }
  
  // the list of all formulas that can be substituted in a given formula
  private List<Formula> getCandidates(Formula funcFormula, Formula argFormula) {
    return getArgs(funcFormula).stream().filter(f -> 
      DALExecutor.getType(f).equals(DALExecutor.getType(argFormula))
    ).collect(Collectors.toList());
    // best if we can sort according to score here
  }

  
  class SymbolEntry {
    String head;
    int id;
    Formula formula;
    Set<Formula> args;
    public SymbolEntry(String head, int id, Formula formula) {
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

