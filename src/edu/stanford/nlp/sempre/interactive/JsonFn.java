package edu.stanford.nlp.sempre.interactive;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.testng.collections.Lists;

import edu.stanford.nlp.sempre.AtomicSemType;
import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.Derivation;
import edu.stanford.nlp.sempre.DerivationStream;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.IdentityFn;
import edu.stanford.nlp.sempre.MultipleDerivationStream;
import edu.stanford.nlp.sempre.SemType;
import edu.stanford.nlp.sempre.SemanticFn;
import edu.stanford.nlp.sempre.StringValue;
import edu.stanford.nlp.sempre.ValueFormula;
import fig.basic.LispTree;
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
    if (mode == Mode.isPath || mode == Mode.isValue) {
      return (new IdentityFn()).call(ex, c);
    } else if (mode == Mode.expand) {
      return new JsonPathStream(ex, c);
    } else if (mode == Mode.template) {
      return new TemplateStream(c);
    }
    return null;
  }

  static class TemplateStream extends MultipleDerivationStream {
    List<Object> templates;
    Callable callable;
    int currIndex = 0;

    public TemplateStream(Callable c) {
      callable = c;
      this.templates = Templates.singleton().templates;
    }

    @Override
    public Derivation createDerivation() {
      if (currIndex == templates.size()) return null;
      Formula formula = null;
      // change to using just the name of the template
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }

  static class JsonPathStream extends MultipleDerivationStream {
    List<String> paths;
    Callable callable;
    int currIndex = 0;

    public JsonPathStream(Example ex, Callable c) {
      callable = c;
      paths = expandPath(c.childStringValue(0), ex.context);
    }

    @Override
    public Derivation createDerivation() {
      if (currIndex == paths.size()) return null;
      String path = paths.get(currIndex++);
      Formula formula = new ValueFormula<StringValue>(new StringValue(path));
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }

  public static List<String> expandPath(String PathPattern, ContextValue context) {
    return basicExpandPath(PathPattern, context);
  }

  // POLESTAR functionalities
  public static List<String> basicExpandPath(String pattern, ContextValue context) {
    List<String> allowed = Lists.newArrayList(
        "$.encoding.*.field",
        "$.encoding.*.field",
        "$.encoding.*.axis.title"
        );

    List<String> encodings = Lists.newArrayList(
        "x", "y", "column", "row", "size", "color", "shape", "detail", "text"
        );
    Stream<String> allPaths = allowed.stream()
        .flatMap(s -> encodings.stream().map(t -> s.replace("*", t)));

    return allPaths.filter(s -> {
      return Arrays.asList(pattern.split(" ")).stream().allMatch(t -> Arrays.asList(s.split("\\.")).contains(t));
    }).collect(Collectors.toList());
  }
}
