package edu.stanford.nlp.sempre.interactive;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;

import com.fasterxml.jackson.databind.JsonNode;
import com.google.common.collect.Iterators;
import com.google.common.collect.Sets;

import edu.stanford.nlp.sempre.Derivation;
import edu.stanford.nlp.sempre.DerivationStream;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.JsonValue;
import edu.stanford.nlp.sempre.MultipleDerivationStream;
import edu.stanford.nlp.sempre.SemanticFn;
import edu.stanford.nlp.sempre.ValueFormula;
import fig.basic.LispTree;
import fig.basic.Option;

/**
 * handle Vega types and special values
 * @author sidaw
 */
public class VegaFn extends SemanticFn {
  public static class Options {
    @Option(gloss = "verbosity")
    public int verbose = 0;
  }

  public static Options opts = new Options();
  enum Mode {Enum, Field, Color};
  Mode mode;

  @Override
  public void init(LispTree tree) {
    super.init(tree);
    mode = Mode.valueOf(tree.child(1).toString());
  }

  @Override
  public DerivationStream call(final Example ex, final Callable c) {
    if (mode == Mode.Enum) {
      return new VegaValueStream(ex, c, s -> VegaResources.getEnumTypes(s));
    } else if (mode == Mode.Color) {
      return new VegaValueStream(ex, c, s -> {
        Set<String> colorSet = VegaResources.getColorSet();
        if (colorSet.contains(s.toLowerCase()))
          return Sets.newHashSet("color");
        return null;
      });
    } else if (mode == Mode.Field) {
      return new VegaValueStream(ex, c, s -> {
        VegaJsonContextValue context = (VegaJsonContextValue) ex.context;
        if (context.getJsonNode().has("fields")) {
          for(JsonNode field : context.getJsonNode().get("fields")) {
            if (s.equals(field.textValue()))
              return Sets.newHashSet("field");
          }
        }
        return null;
      });
    }
    return null;
  }

  // takes a token determine what kind of value it can take
  static class VegaValueStream extends MultipleDerivationStream {
    private String curString;
    private Iterator<String> strIterator;
    private Set<String> types;
    private Iterator<String> typeIterator;
    private Callable callable;
    private Function<String, Set<String>> tokenChecker;

    public VegaValueStream(Example ex, Callable c, Function<String, Set<String>> tokenChecker) {
      List<String> strings = new ArrayList<String>();
      String child = c.childStringValue(0);
      strings.add(child);
      if (child.matches(".*[s?!.,]"))
        strings.add(child.substring(0, child.length() - 1));
      strIterator = strings.iterator();
      callable = c;
      this.tokenChecker = tokenChecker;
      advanceStr();
    }

    private void advanceStr() {
      curString = strIterator.next();
      types = tokenChecker.apply(curString);
      if (types != null && types.size() > 0)
        typeIterator = types.iterator();
      else
        typeIterator = Iterators.emptyIterator();
    }

    @Override
    public Derivation createDerivation() {
      String type;
      while (!typeIterator.hasNext()) {
        if (!strIterator.hasNext())
          return null;
        advanceStr();
      }
      type = typeIterator.next();
      JsonValue value = new JsonValue(curString).withSchemaType(type);
      Formula formula = new ValueFormula<JsonValue>(value);
      return new Derivation.Builder()
          .withCallable(callable)
          .formula(formula)
          .createDerivation();
    }
  }
}
