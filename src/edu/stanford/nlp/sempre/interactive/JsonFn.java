package edu.stanford.nlp.sempre.interactive;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.function.Function;

import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.ActionFormula;
import edu.stanford.nlp.sempre.AtomicSemType;
import edu.stanford.nlp.sempre.Derivation;
import edu.stanford.nlp.sempre.DerivationStream;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.JsonValue;
import edu.stanford.nlp.sempre.MultipleDerivationStream;
import edu.stanford.nlp.sempre.NameValue;
import edu.stanford.nlp.sempre.SemType;
import edu.stanford.nlp.sempre.SemanticFn;
import edu.stanford.nlp.sempre.SingleDerivationStream;
import edu.stanford.nlp.sempre.Value;
import edu.stanford.nlp.sempre.ValueFormula;
import fig.basic.LispTree;
import fig.basic.LogInfo;
import fig.basic.Option;
import fig.basic.Pair;

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
    Callable callable;
    Iterator<Pair<List<String>, JsonValue>> iterator;
    List<String> pathPattern;
    boolean anyPath = false;
    boolean anyValue = false;

    // when there is not too many Paths,
    // where Path restrict the values that need to be considered
    private final class EnumeratePathsIterator implements
    Iterator<Pair<List<String>, JsonValue>> {
      Iterator<JsonValue> valueIterator;
      Iterator<List<String>> pathIterator;
      List<String> currentPath;
      Function<List<String>, Iterator<JsonValue>> getValueFn;
      Pair<List<String>, JsonValue> nextValue = null;

      public EnumeratePathsIterator(Iterator<List<String>> pathIterator, Function<List<String>, Iterator<JsonValue>> getValueFn) {
        this.pathIterator = pathIterator;
        this.getValueFn = getValueFn;
        this.valueIterator = Collections.emptyIterator();
        nextPath();
      }

      private void nextPath() {
        while (pathIterator.hasNext() && !valueIterator.hasNext()) {
          currentPath = pathIterator.next();
          valueIterator = getValueFn.apply(currentPath);
        }
        if (valueIterator.hasNext())
          nextValue = new Pair<>(currentPath, valueIterator.next());
        else nextValue = null;
      }

      public boolean hasNext() {
        return nextValue != null;
      }

      public Pair<List<String>, JsonValue> next() {
        Pair<List<String>, JsonValue> currentValue = nextValue;
        nextPath();
        return currentValue;
      }
    }

    private Iterator<JsonValue> getValue(List<String> path, List<JsonValue> values) {
      return null;
    }

    public JoinStream(Example ex, Callable c) {
      callable = c;
      Formula pathFormula = c.child(0).formula;
      Formula valueFormula = c.child(1).formula;
      // LogInfo.logs("JoinStream %s %s", pathFormula,  valueFormula);
      if (pathFormula instanceof ValueFormula) {
        pathPattern = "*".equals(Formulas.getString(pathFormula))? Lists.newArrayList() : Lists.newArrayList(Formulas.getString(pathFormula));
      } else if (pathFormula instanceof ActionFormula) {
        pathPattern = JsonExecutor.pathFormulaToList((ActionFormula)pathFormula);
      } else {
        throw new RuntimeException("unsuppported path formula: " + pathFormula);
      }
      
      // all the different ways of getting values
      Function<List<String>, Iterator<JsonValue>> pathToValue;
      if (valueFormula instanceof ValueFormula) {
        Value v = ((ValueFormula)valueFormula).value;
        
        if ("*".equals(Formulas.getString(valueFormula))) {
          // LogInfo.logs("JoinStream.anyvalue %s", v);
          pathToValue = p -> VegaResources.getValues(p).iterator();
        } else {
          pathToValue = p -> Iterators.singletonIterator((JsonValue)v);
        }
      } else {
        pathToValue = p -> Collections.emptyIterator();
      }
      
      iterator = new EnumeratePathsIterator(VegaResources.allPathsMatcher.match(pathPattern).iterator(),
         pathToValue);
    }

    private boolean checkType(List<String> path, JsonValue value) {
      JsonSchema jsonSchema = VegaResources.vegaSchema;
      List<JsonSchema> pathSchemas = jsonSchema.schemas(path);

      for (JsonSchema schema : pathSchemas) {
        try {
          if (schema.type().equals("string") && schema.enums() != null) {
            if (schema.enums().contains(value.getJsonNode().asText())) return true;
          } else if (value.getRichType().equals(schema.type()))
            return true;
        } catch (Exception e) {
          LogInfo.logs("checkType exception %s %s", e, path);
          return false;
        }
      }
      return false;
    }

    private Derivation derivFromPathValue(List<String> path, JsonValue value) {
      NameValue fullPath = new NameValue("$." + String.join(".", path), String.join("*", this.pathPattern));
      Formula setFormula = new ActionFormula(ActionFormula.Mode.primitive,
          Lists.newArrayList(new ValueFormula<NameValue>(new NameValue("set")),
              new ValueFormula<NameValue>(fullPath),
              new ValueFormula<JsonValue>(value)));
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(setFormula)
          .createDerivation();
    }

    @Override
    public Derivation createDerivation() {
      while (iterator.hasNext()) {
        Pair<List<String>, JsonValue> next = iterator.next();
        // LogInfo.logs("Join %s", next);
        if (checkType(next.getFirst(), next.getSecond())) {
          return derivFromPathValue(next.getFirst(), next.getSecond());
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
      JsonValue value;
      try {
        Double number = Double.parseDouble(callable.childStringValue(0));
        value = new JsonValue(number).withType("number");
      } catch (Exception e) {
        String string = callable.childStringValue(0);
        value = new JsonValue(string).withType("string");
      }
      Formula formula = new ValueFormula<JsonValue>(value);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }
}
