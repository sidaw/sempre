package edu.stanford.nlp.sempre.interactive;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import edu.stanford.nlp.sempre.ActionFormula;
import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.ErrorValue;
import edu.stanford.nlp.sempre.Executor;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.NameValue;
import edu.stanford.nlp.sempre.StringValue;
import edu.stanford.nlp.sempre.Value;
import edu.stanford.nlp.sempre.ValueFormula;
import edu.stanford.nlp.sempre.Executor.Response;
import edu.stanford.nlp.sempre.interactive.VegaEngine;
import edu.stanford.nlp.sempre.interactive.VegaEngine.VegaResponse;
import fig.basic.IOUtils;
import fig.basic.LogInfo;
import fig.basic.Option;

/**
 * Process formula whose interpretation depends on a JsonContext and Schema
 */
public class JsonExecutor extends Executor {
  public static class Options {
    @Option(gloss = "Print stack trace on exception")
    public boolean printStackTrace = false;
    
    @Option(gloss = "Verbosity")
    public int verbose = 0;
  }

  public static Options opts = new Options();

  private VegaEngine vegaEngine = new VegaEngine();

  @Override
  public Response execute(Formula formula, ContextValue context) {
    JsonContextValue jsonContext; 
    if (context instanceof JsonContextValue)
      jsonContext = (JsonContextValue)context;
    else
      jsonContext = JsonContextValue.defaultContext();
    JsonNode jsonNode = JsonUtils.toObjectNode(jsonContext.json);
    VegaResponse contextResponse = vegaEngine.compileVegaLite(jsonNode);
    
    formula = Formulas.betaReduction(formula);
    try {
      JsonNode result = execute((ActionFormula)formula, jsonContext, contextResponse);
      return new Response(new JsonValue(result));
    } catch (Exception e) {
      // Comment this out if we expect lots of innocuous type checking failures
      if (opts.printStackTrace) {
        LogInfo.log("Failed to execute " + formula.toString());
        e.printStackTrace();
      }
      return new Response(ErrorValue.badJava(e.toString()));
    }
  }

  @SuppressWarnings("rawtypes")
  private String getString(Formula f) {
    return ((StringValue)((ValueFormula)f).value).value;
  }
  
  @SuppressWarnings("rawtypes")
  private JsonNode execute(ActionFormula f, JsonContextValue jsonContext, VegaResponse contextResponse) {
    if (opts.verbose >= 1) {
      LogInfo.begin_track("JsonExecutor");
      LogInfo.logs("Executing: %s", f);
      LogInfo.logs("World: %s", jsonContext.getJson());
      LogInfo.logs("VegaContext: %s", contextResponse.vegaSpec);
      LogInfo.end_track();
    }
    JsonNode result = null;
    if (f.mode == ActionFormula.Mode.primitive) {
      // use reflection to call primitive stuff
      Value method = ((ValueFormula) f.args.get(0)).value;
      String id = ((NameValue) method).id;
      // all actions takes a fixed set as argument
      if (id.equals("set")) {
        Formula pathf = f.args.get(1);
        Value value = ((ValueFormula) f.args.get(2)).value;
        String path = getString(pathf);
        ObjectNode objNode = JsonUtils.toObjectNode(jsonContext.json);
        JsonUtils.setPathValue(objNode, path, JsonUtils.toJsonNode(((StringValue)value).value));
        result = objNode;
      } else if (id.equals("new")) {
        Formula filename = f.args.get(1);
        String key = getString(filename);
        result = JsonUtils.toJsonNode(Json.readMapHard(Templates.singleton().templatesMap.get(key)));
      }
    }
    // Compile Vega-lite spec
    VegaResponse vr = vegaEngine.compileVegaLite(result, contextResponse);
    if (opts.verbose >= 2) {
      LogInfo.logs("Vega-lite spec: %s", result.toString());
      LogInfo.logs("Vega spec: %s", vr.vegaSpec.toString());
      LogInfo.logs("Compiler message: %s", vr.message);
      if (vr.svg != null) {
        LogInfo.logs("SVG: %s", vr.svg);
      }
    }
    if (!vr.isGoodChange(contextResponse)) {
      if (vr.isClean()) {
        throw new RuntimeException("Output was unchanged");
      } else {
        throw new RuntimeException(vr.message);
      }
    }
    return result;
  }
  
  private Object naiveSetJsonPath(Formula path, Value v) {
    return null;
  }
}
