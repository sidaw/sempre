package edu.stanford.nlp.sempre.interactive;

import java.util.*;
import java.util.stream.Collectors;

import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.ActionFormula;
import edu.stanford.nlp.sempre.Derivation;
import edu.stanford.nlp.sempre.DerivationStream;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.JsonValue;
import edu.stanford.nlp.sempre.MultipleDerivationStream;
import edu.stanford.nlp.sempre.NameValue;
import edu.stanford.nlp.sempre.SemanticFn;
import edu.stanford.nlp.sempre.SingleDerivationStream;
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
    } else if (mode == Mode.AnyPath) {
      return new PathStream(ex, c, mode);
    } else if (mode == Mode.Path) {
      return new PathStream(ex, c, mode);
    } else if (mode == Mode.Join) {
      return new JoinStream(ex, c);
    }
    return null;
  }

  static class JoinStream extends MultipleDerivationStream {
    Callable callable;
    List<JsonValue> values;
    String jsonPath;
    int index = 0;

    public JoinStream(Example ex, Callable c) {
      callable = c;
      Formula pathFormula = c.child(0).formula;
      Formula valueFormula = c.child(1).formula;

      jsonPath = Formulas.getString(pathFormula);
      List<String> path = VegaExecutor.stringToPath(jsonPath);
      if (opts.verbose > 1)
        LogInfo.logs("JoinStream %s %s %s", pathFormula,  path, valueFormula);

      if (valueFormula instanceof ValueFormula) {
        if ("*".equals(Formulas.getString(valueFormula))) {
          values = VegaResources.getValues(path, null);
        } else {
          JsonValue v = (JsonValue)((ValueFormula)valueFormula).value;
          values = VegaResources.getValues(path, v);
        }
      } else {
        throw new RuntimeException("Invalid valueFormula: " + valueFormula);
      }
    }

    private Derivation derivFromPathValue(String path, JsonValue value) {
      NameValue fullPath = new NameValue(path);
      Formula setFormula = new ActionFormula(ActionFormula.Mode.primitive,
          Lists.newArrayList(new ValueFormula<NameValue>(new NameValue("set")),
              new ValueFormula<NameValue>(fullPath),
              new ValueFormula<JsonValue>(value)));
      Derivation deriv = new Derivation.Builder()
          .withCallable(callable)
          .formula(setFormula)
          .createDerivation();
      deriv.canonicalUtterance = String.format("set %s to %s", String.join(" ", VegaExecutor.stringToPath(jsonPath)), value.getJsonNode().toString());
      return deriv;
    }

    @Override
    public Derivation createDerivation() {
      if (index >= values.size()) return null;
      JsonValue value = values.get(index);
      index++;
      return derivFromPathValue(jsonPath, value);
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

  // Generate paths based on path pattern, or all paths
  static class PathStream extends MultipleDerivationStream {
    static List<NameValue> allPaths = new ArrayList<>();
    int index = 0;
    Callable callable;
    List<NameValue> paths;

    public PathStream(Example ex, Callable c, Mode mode) {
      callable = c;
      synchronized (allPaths) {
        if (allPaths.isEmpty()) {
          // Only initialize once
          for (List<String> path : VegaResources.allPathsMatcher.getPaths()) {
            allPaths.add(new NameValue(VegaExecutor.pathToString(path)));
          }
        }
      }

      if (mode == Mode.AnyPath)
        paths = allPaths;
      else {
        Formula pathPattern = c.child(0).formula;
        List<String> matchPattern;
        if (pathPattern instanceof ActionFormula) {
          matchPattern = VegaExecutor.pathFormulaToList((ActionFormula) pathPattern);
        } else if (pathPattern instanceof ValueFormula) {
          matchPattern = Lists.newArrayList(Formulas.getString(pathPattern));
        } else {
          throw new RuntimeException("unsupported pathPattern: " + pathPattern);
        }

        paths = VegaResources.allPathsMatcher.match(matchPattern)
          .stream().map(path -> (new NameValue("$." + String.join(".", path))))
          .collect(Collectors.toList());
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
}
