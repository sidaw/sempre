package edu.stanford.nlp.sempre.interactive;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

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

    @Option(gloss = "max number of joins")
    public int maxJoins = Integer.MAX_VALUE;
  }

  public static Options opts = new Options();
  Formula arg1, arg2;
  enum Mode {PathElement, Path, JsonValue, ConstantValue, AnyPath, AnyPathElement, Template, Join};
  Mode mode;
  DerivationStream stream;

  @Override
  public void init(LispTree tree) {
    super.init(tree);
    mode = Mode.valueOf(tree.child(1).toString());
  }

  @Override
  public DerivationStream call(final Example ex, final Callable c) {
    if (mode == Mode.PathElement) {
      return new IsPathStream(ex, c);
    } else if (mode == Mode.JsonValue) {
      return new JsonValueStream(ex, c);
    } else if (mode == Mode.ConstantValue) {
      return new ConstantValueStream(ex, c);
    } else if (mode == Mode.AnyPath) {
      return new AnyPathStream(ex, c);
    } else if (mode == Mode.Path) {
      return new PathStream(ex, c);
    } else if (mode == Mode.Join) {
      return new JoinStream(ex, c);
    }
    return null;
  }

  static class JoinStream extends MultipleDerivationStream {
    Callable callable;
    Iterator<Pair<List<String>, JsonValue>> iterator;
    List<String> pathPattern;
    int generated = 0;

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
        if (opts.verbose > 1)
          LogInfo.logs("JsonFn.nextPath %s", nextValue);
        while (pathIterator.hasNext() && !valueIterator.hasNext()) {
          currentPath = pathIterator.next();
          valueIterator = getValueFn.apply(currentPath);
        }
        if (valueIterator.hasNext())
          nextValue = new Pair<>(currentPath, valueIterator.next());
        else nextValue = null;
      }

      public boolean hasNext() {
        if (generated++ > opts.maxJoins) return false;
        return nextValue != null;
      }

      public Pair<List<String>, JsonValue> next() {
        Pair<List<String>, JsonValue> currentValue = nextValue;
        nextPath();
        return currentValue;
      }
    }

    public JoinStream(Example ex, Callable c) {
      callable = c;
      Formula pathFormula = c.child(0).formula;
      Formula valueFormula = c.child(1).formula;
      if (opts.verbose > 1)
        LogInfo.logs("JoinStream %s %s", pathFormula,  valueFormula);

      Function<List<String>, Iterator<JsonValue>> pathToValue;
      if (valueFormula instanceof ValueFormula) {
        if ("*".equals(Formulas.getString(valueFormula))) {
          pathToValue = p -> new HashSet<>(VegaResources.getValues(p, null)).iterator();
        } else {
          JsonValue v = (JsonValue)((ValueFormula)valueFormula).value;
          pathToValue = p -> VegaResources.getValues(p, v).iterator();
        }
      } else {
        throw new RuntimeException("Invalid valueFormula: " + valueFormula);
      }

      List<String> matchedPath = Lists.newArrayList(Formulas.getString(pathFormula).substring(2).split("\\."));
      List<List<String>> singleton = new ArrayList<>();
      singleton.add(matchedPath);
      iterator = new EnumeratePathsIterator(singleton.iterator(), pathToValue);
    }

    private Derivation derivFromPathValue(List<String> path, JsonValue value) {
      NameValue fullPath = new NameValue("$." + String.join(".", path));
      Formula setFormula = new ActionFormula(ActionFormula.Mode.primitive,
          Lists.newArrayList(new ValueFormula<NameValue>(new NameValue("set")),
              new ValueFormula<NameValue>(fullPath),
              new ValueFormula<JsonValue>(value)));
      Derivation deriv = new Derivation.Builder()
          .withCallable(callable)
          .formula(setFormula)
          .createDerivation();
      /*deriv.canonicalUtterance = String.format("%s : %s (types path: %s, value %s)", String.join(" ", path),
          value.getJsonNode().toString(),
          VegaResources.vegaSchema.schemas(path).stream().map(s -> s.types())
          .collect(Collectors.toList()),
          value.getSchemaType());*/
      CanonicalUtteranceGenerator cuGenerator = new CanonicalUtteranceGenerator(String.join(" ", path), value.getJsonNode().toString());
      deriv.canonicalUtterance = cuGenerator.getSimpleCanonicalUtterance();
      return deriv;
    }

    @Override
    public Derivation createDerivation() {
      while (iterator.hasNext()) {
        Pair<List<String>, JsonValue> next = iterator.next();

        if (opts.verbose > 2)
          LogInfo.logs("JsonFn yield %s %s", next.getFirst(), next.getSecond());
        return derivFromPathValue(next.getFirst(), next.getSecond());
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

  // takes a token and check if it can be a value
  static class JsonValueStream extends SingleDerivationStream {
    Callable callable;

    public JsonValueStream(Example ex, Callable c) {
      callable = c;
    }

    private Double parseNumber(String string) {
      try {
        return Double.valueOf(string);
      } catch (NumberFormatException e) {
        return null;
      }
    }

    private Boolean parseBoolean(String string) {
      if (string.equals("true"))
        return true;
      else if (string.equals("false"))
        return false;
      else return null;
    }

    @Override
    public Derivation createDerivation() {
      JsonValue value;
      String string = callable.childStringValue(0);

      // cant just use getNodeType, because 100 and true are also strings
      if (parseNumber(string) != null)
        value = new JsonValue(parseNumber(string)).withSchemaType("number");
      else if (parseBoolean(string) != null) {
        value = new JsonValue(parseBoolean(string)).withSchemaType("boolean");
      } else {
        value = new JsonValue(string).withSchemaType("string");
      }
      Formula formula = new ValueFormula<JsonValue>(value);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }

  static class ConstantValueStream extends MultipleDerivationStream {
    List<JsonValue> values = new ArrayList<JsonValue>();
    int index = 0;
    Callable callable;

    public ConstantValueStream(Example ex, Callable c) {
      callable = c;
      values.add(new JsonValue(false).withSchemaType("boolean"));
      values.add(new JsonValue(true).withSchemaType("boolean"));
      values.add(new JsonValue(0.0).withSchemaType("number"));
    }

    public Derivation createDerivation() {
      if (index >= values.size())
        return null;
      JsonValue value = values.get(index);
      index++;
      Formula formula = new ValueFormula<JsonValue>(value);
      return new Derivation.Builder()
        .withCallable(callable)
        .formula(formula)
        .createDerivation();
    }
  }

  // Generate all possible full paths
  static class AnyPathStream extends MultipleDerivationStream {
    static List<NameValue> paths = new ArrayList<>();
    int index = 0;
    Callable callable;

    public AnyPathStream(Example ex, Callable c) {
      callable = c;
      synchronized (paths) {
        if (paths.isEmpty()) {
          // Only initialize once
          for (List<String> path : VegaResources.allPathsMatcher.getPaths()) {
            paths.add(new NameValue("$." + String.join(".", path)));
          }
        }
      }
    }

    public Derivation createDerivation() {
      if (index >= paths.size())
        return null;
      NameValue path = paths.get(index);
      index++;
      Formula formula = new ValueFormula<NameValue>(path);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }

  // generate matching full matches from pathPattern
  static class PathStream extends MultipleDerivationStream {
    List<NameValue> paths = new ArrayList<>();
    int index = 0;
    Callable callable;

    public PathStream(Example ex, Callable c) {
      callable = c;
      Formula pathPattern = c.child(0).formula;
      List<String> matchPattern;
      if (pathPattern instanceof ActionFormula) {
        matchPattern = VegaExecutor.pathFormulaToList((ActionFormula) pathPattern);
      } else if (pathPattern instanceof ValueFormula) {
        matchPattern = Lists.newArrayList(Formulas.getString(pathPattern));
      } else {
        throw new RuntimeException("unsuppported pathPattern: " + pathPattern);
      }

      paths = VegaResources.allPathsMatcher.match(matchPattern)
          .stream().map(path -> (new NameValue("$." + String.join(".", path))))
          .collect(Collectors.toList());
    }

    public Derivation createDerivation() {
      if (index >= paths.size())
        return null;
      NameValue path = paths.get(index);
      index++;
      Formula formula = new ValueFormula<NameValue>(path);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }
}
