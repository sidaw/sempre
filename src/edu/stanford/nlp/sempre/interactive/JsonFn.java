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
  enum Mode {isPath, isValue, template, expand};
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
    } else if (mode == Mode.isValue) {
      return (new IdentityFn()).call(ex, c);
    } else if (mode == Mode.expand) {
      return new JsonPathStream(ex, c);
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

  static class JsonPathStream extends MultipleDerivationStream {
    List<String> path;
    Callable callable;
    int currIndex = 0;
    List<List<String>> matches;
    
    public JsonPathStream(Example ex, Callable c) {
      Formula childFormula = c.child(0).formula;
      if (childFormula instanceof ValueFormula)
        path = Lists.newArrayList(Formulas.getString(childFormula));
      else if (childFormula instanceof ActionFormula)
        path = JsonExecutor.pathFormulaToList((ActionFormula)childFormula);
      else
        throw new RuntimeException("invalid path " + childFormula);
      List<List<String>> allmatches = VegaResources.allPathsMatcher.match(path);
      matches = allmatches;
// hacky filtering, use only paths that overlaps with the context, should really be handled via features
//      List<String> contextPaths = JsonUtils.allPaths(JsonUtils.toJsonNode(((JsonContextValue)ex.context).json));
//      matches = allmatches.stream()
//          .filter(s -> contextPaths.stream().anyMatch( t -> t.contains(s.get(0))))
//          .collect(Collectors.toList());
      // LogInfo.logs("JsonFn matched %d (%d in context) paths for %s", allmatches.size(), matches.size(), path);
      callable = c;
    }
    
    @Override
    public Derivation createDerivation() {
      if (matches.size() == 0) return null;
      if (currIndex >= matches.size()) return null;
      List<String> match = matches.get(currIndex++);
      NameValue fullPath = new NameValue( String.join("*", this.path) + JsonExecutor.SEPARATOR + "$." + String.join(".", match));
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(new ValueFormula<NameValue>(fullPath))
          .createDerivation();
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
}
