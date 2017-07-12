package edu.stanford.nlp.sempre.interactive;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.fasterxml.jackson.databind.node.JsonNodeType;
import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.ActionFormula;
import edu.stanford.nlp.sempre.AtomicSemType;
import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.Derivation;
import edu.stanford.nlp.sempre.DerivationStream;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.IdentityFn;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.MultipleDerivationStream;
import edu.stanford.nlp.sempre.NameValue;
import edu.stanford.nlp.sempre.SemType;
import edu.stanford.nlp.sempre.SemanticFn;
import edu.stanford.nlp.sempre.SingleDerivationStream;
import edu.stanford.nlp.sempre.StringValue;
import edu.stanford.nlp.sempre.ValueFormula;
import fig.basic.LispTree;
import fig.basic.LogInfo;
import fig.basic.Option;

/**
 * collection of misc. semantic functions for filtering json objects
 * @author sidaw
 */
public class JsonFn extends SemanticFn {
  public static class Options {
    @Option(gloss = "verbosity")
    public int verbose = 0;
  }

  public static Options opts = new Options();
  Formula arg1, arg2;
  enum Mode {isPath, jsonValue, template, join};
  Mode mode;
  DerivationStream stream;

  public static final SemType primitiveType = new AtomicSemType("primitive");

  @Override
  public void init(LispTree tree) {
    super.init(tree);
    mode = Mode.valueOf(tree.child(1).toString());
  }

  @Override
  public DerivationStream call(final Example ex, final Callable c) {
    if (mode == Mode.isPath) {
      return new IsPathStream(ex, c);
    } else if (mode == Mode.jsonValue) {
      return new JsonValueStream(ex, c);
    } else if (mode == Mode.join) {
      return new JoinStream(ex, c);
    } else if (mode == Mode.template) {
      return new TemplateStream(c);
    }
    return null;
  }

  static class TemplateStream extends MultipleDerivationStream {
    Callable callable;
    int currIndex = 0;
    private Iterator<Entry<String, String>> templatesIterator;

    public TemplateStream(Callable c) {
      callable = c;
      this.templatesIterator = VegaResources.templatesMap.entrySet().stream()
          .filter(s -> s.getKey().contains(c.childStringValue(0))).iterator();
    }

    @Override
    public Derivation createDerivation() {
      if (!templatesIterator.hasNext()) return null;

      Formula formula = new ValueFormula<>(new NameValue(templatesIterator.next().getKey()));
      // change to using just the name of the template
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }

  static class JoinStream extends MultipleDerivationStream {
    List<String> path;
    Callable callable;
    int currPathIndex = 0;
    int currValueIndex = -1;
    List<List<String>> fullPaths;
    List<JsonValue> fullValues;
    
    boolean manyPaths = false;
    boolean manyValues = false;
    
    
    public JoinStream(Example ex, Callable c) {
      Formula pathFormula = c.child(0).formula;
      Formula valueFormula = c.child(1).formula;
      LogInfo.logs("JoinStream %s %s", pathFormula,  valueFormula);
      
      manyPaths = "*".equals(Formulas.getString(pathFormula));
      manyValues = "*".equals(Formulas.getString(valueFormula));
      
      if (pathFormula instanceof ValueFormula) {
          path = Lists.newArrayList(Formulas.getString(pathFormula));
      } else if (pathFormula instanceof ActionFormula)
        path = JsonExecutor.pathFormulaToList((ActionFormula)pathFormula);
      else
        throw new RuntimeException("invalid path " + pathFormula);
      
      this.fullPaths = VegaResources.allPathsMatcher.match(path);
      fullValues = Lists.newArrayList(((ValueFormula<JsonValue>)c.child(1).formula).value);
      LogInfo.logs("JoinStream %s %s  %s %s", pathFormula, valueFormula, fullPaths, fullValues);
      callable = c;
    }
    
    private boolean checkType(List<String> path, JsonValue value) {
      JsonSchema jsonSchema = VegaResources.vegaSchema;
      List<JsonSchema> pathSchemas = jsonSchema.schemas(path);
      
      for (JsonSchema schema : pathSchemas) {
        try {
          if (schema.type().equals("string") && schema.enums() != null) {
            if (schema.enums().contains(value.json.asText())) return true;
          } else if (value.json.getNodeType().toString().toLowerCase().equals(schema.type()))
            return true;
        } catch (Exception e) {
          LogInfo.logs("checkType %s %s", e, path);
          return false;
        }
      }
      return false;
    }
    
    private boolean nextJoin() {
      if (currValueIndex + 1 == fullValues.size())
        currPathIndex = currPathIndex+1;
      currValueIndex = (currValueIndex+1) % fullValues.size();
      if (currPathIndex >= fullPaths.size())
        return false;
      return true;
    }
    
    @Override
    public Derivation createDerivation() {
      List<String> path;
      JsonValue value;
     
      while (nextJoin()) {
        if (checkType(path = fullPaths.get(currPathIndex), value = fullValues.get(currValueIndex))) {
          NameValue fullPath = new NameValue("$." + String.join(".", path), String.join("*", this.path));
          JsonValue jsonValue = value;
          Formula setFormula = new ActionFormula(ActionFormula.Mode.primitive,
              Lists.newArrayList(new ValueFormula<NameValue>(new NameValue("set")),
                  new ValueFormula<NameValue>(fullPath),
                  new ValueFormula<JsonValue>(jsonValue)));
          return new Derivation.Builder()
              .withCallable(callable)
              .formula(setFormula)
              .createDerivation();
        }
      }
      return null;
    }
  }
  
  // takes a token and check if it can be a path
  static class IsPathStream extends SingleDerivationStream {
    Set<String> keys;
    Callable callable;
    int currIndex = 0;

    public IsPathStream(Example ex, Callable c) {
      callable = c;      
      keys = VegaResources.allPathsMatcher.pathKeys();
    }

    @Override
    public Derivation createDerivation() {
      if (!keys.contains(callable.childStringValue(0)))
        return null;
      Formula formula = new ValueFormula<NameValue>(new NameValue(callable.childStringValue(0)));
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }
  
  // takes a token and check if it can be a path
  static class JsonValueStream extends SingleDerivationStream {
    Callable callable;
    int currIndex = 0;

    public JsonValueStream(Example ex, Callable c) {
      callable = c;      
    }

    @Override
    public Derivation createDerivation() {
      Object value;
      try {
        value = Double.parseDouble(callable.childStringValue(0));
      } catch (Exception e) {
        value = callable.childStringValue(0);
      }
      Formula formula = new ValueFormula<JsonValue>(new JsonValue(value));
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }
}
