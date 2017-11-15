package edu.stanford.nlp.sempre.interactive;

import java.util.List;
import java.util.stream.Collectors;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.common.collect.Lists;

import edu.stanford.nlp.sempre.ActionFormula;
import edu.stanford.nlp.sempre.BooleanValue;
import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.ErrorValue;
import edu.stanford.nlp.sempre.Executor;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.JsonValue;
import edu.stanford.nlp.sempre.ListValue;
import edu.stanford.nlp.sempre.NameValue;
import edu.stanford.nlp.sempre.NumberValue;
import edu.stanford.nlp.sempre.StringValue;
import edu.stanford.nlp.sempre.Value;
import edu.stanford.nlp.sempre.ValueFormula;
import edu.stanford.nlp.sempre.interactive.VegaEngine.VegaResponse;
import fig.basic.LogInfo;
import fig.basic.Option;

/**
 * Process formula whose interpretation depends on a JsonContext and Schema
 */
public class VegaExecutor extends Executor {
  public static class Options {
    @Option(gloss = "Print stack trace on exception")
    public boolean printStackTrace = false;
    @Option(gloss = "Verbosity")
    public int verbose = 0;
    @Option(gloss = "Compile vega")
    public boolean compileVega = true;
  }

  public static Options opts = new Options();

  private VegaEngine vegaEngine;
  private VegaResources vegaResource;

  public VegaExecutor() {
    if (opts.compileVega)
      vegaEngine = new VegaEngine();
    vegaResource = new VegaResources();
  }

  @Override
  public Response execute(Formula formula, ContextValue context) {
    VegaJsonContextValue jsonContext;
    if (context instanceof VegaJsonContextValue)
      jsonContext = (VegaJsonContextValue)context;
    else
      throw new RuntimeException("VegaExecutor only allows VegaJsonContextValue");
      
    formula = Formulas.betaReduction(formula);
    try {
      JsonNode result = execute((ActionFormula)formula, jsonContext);
      return new Response(new JsonValue(result));
    } catch (Exception e) {
      // Comment this out if we expect lots of innocuous type checking failures
      if (opts.printStackTrace) {
        LogInfo.log("Failed to execute: " + formula.toString());
        e.printStackTrace();
      }
      return new Response(ErrorValue.badJava(e.toString()));
    }
  }

  private static Object toObject(Value value) {
    if (value instanceof NumberValue) {
      // Unfortunately, NumberValues don't make a distinction between ints and
      // doubles, so this is a hack.
      double x = ((NumberValue) value).value;
      if (x == (int) x)
        return new Integer((int) x);
      return new Double(x);
    } else if (value instanceof NameValue) {
      String id = ((NameValue) value).id;
      return id;
    } else if (value instanceof BooleanValue) {
      return ((BooleanValue) value).value;
    } else if (value instanceof StringValue) {
      return ((StringValue) value).value;
    } else if (value instanceof ListValue) {
      List<Object> list = Lists.newArrayList();
      for (Value elem : ((ListValue) value).values)
        list.add(toObject(elem));
      return list;
    } else {
      return value; // Preserve the Value (which can be an object)
    }
  }
  @SuppressWarnings("rawtypes")
  private String getString(Formula f) {
    return ((StringValue)((ValueFormula)f).value).value;
  }

  @SuppressWarnings("rawtypes")
  private JsonNode execute(ActionFormula f, VegaJsonContextValue jsonContext) {
    JsonNode result = null;
    if (f.mode == ActionFormula.Mode.primitive) {
      // use reflection to call primitive stuff
      Value method = ((ValueFormula) f.args.get(0)).value;
      String id = ((NameValue) method).id;
      // all actions takes a fixed set as argument
      if (id.equals("set")) {
        Formula pathf = f.args.get(1);
        Value value = ((ValueFormula) f.args.get(2)).value;
        String fullpath = Formulas.getString(pathf);
        ObjectNode objNode = (ObjectNode) jsonContext.getJsonNode();
        JsonUtils.setPathValue(objNode, fullpath, ((JsonValue)value).getJsonNode());
        result = objNode;
      } else if (id.equals("init")) {
        Formula mark = f.args.get(1);
        for (int i = 2; i < f.args.size(); i++) {
          Formula encoding = f.args.get(i);
        }
        // TODO: Return a new graph!
      } else {
        throw new RuntimeException("VegaExecutor: formula not implemented: " + f);
      }
    }
    if (opts.verbose >= 1) {
      LogInfo.logs("Executed: %s", f);
      LogInfo.logs("Before: %s", jsonContext);
      LogInfo.logs("After: %s", result);
    }

    if (!opts.compileVega) return result;

    // Compile Vega-lite spec
    VegaResponse contextResponse = vegaEngine.compileVegaLite(jsonContext.getJsonNode());
    VegaResponse vr = vegaEngine.compileVegaLite(result, contextResponse);

    if (opts.verbose >= 2) {
      LogInfo.logs("VegaContext: %s", contextResponse.vegaSpec);
      LogInfo.logs("Vega-lite spec: %s", result.toString());
      LogInfo.logs("Vega spec: %s", vr.vegaSpec.toString());
      LogInfo.logs("Compiler message: %s", vr.message);
      if (vr.image != null) {
        LogInfo.logs("Image: %s", vr.image);
      }
    } else if (opts.verbose >= 1)
      LogInfo.logs("Compiler message: %s", vr.message);

    if (!vr.isGoodChange(contextResponse)) {
      if (vr.isClean()) {
        throw new RuntimeException("Output was unchanged");
      } else {
        throw new RuntimeException(vr.message);
      }
    }
    return result;
  }

  public static List<String> pathFormulaToList(ActionFormula pathFormula) {
    List<Formula> stringFormulas = pathFormula.mapToList(f -> {
      if (f instanceof ActionFormula && ((ActionFormula)f).mode == ActionFormula.Mode.sequential)
        return Lists.newArrayList();
      else return Lists.newArrayList(f);
    }, true);

    List<String> path = stringFormulas.stream().map(f -> Formulas.getString(f)).collect(Collectors.toList());
    if (opts.verbose >= 2)
      LogInfo.logs("PathPattern %s -> %s", pathFormula, path);
    return path;
  }
}
