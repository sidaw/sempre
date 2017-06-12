package edu.stanford.nlp.sempre.interactive;

import edu.stanford.nlp.sempre.ActionFormula;
import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.ErrorValue;
import edu.stanford.nlp.sempre.Executor;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.NameValue;
import edu.stanford.nlp.sempre.StringValue;
import edu.stanford.nlp.sempre.Value;
import edu.stanford.nlp.sempre.ValueFormula;
import edu.stanford.nlp.sempre.Executor.Response;
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

  @Override
  public Response execute(Formula formula, ContextValue context) {
    JsonContextValue jsonContext; 
    if (context instanceof JsonContextValue)
      jsonContext = (JsonContextValue)context;
    else
      jsonContext = JsonContextValue.defaultContext();
    
    formula = Formulas.betaReduction(formula);
    try {
      execute((ActionFormula) formula, jsonContext);
      return new Response(new JsonValue(jsonContext.getJson()));      
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
  private Object execute(ActionFormula f, JsonContextValue jsonContext) {
    if (opts.verbose >= 1) {
      LogInfo.begin_track("JsonExecutor");
      LogInfo.logs("Executing: %s", f);
      LogInfo.logs("World: %s", jsonContext.getJson());
      LogInfo.end_track();
    }
    if (f.mode == ActionFormula.Mode.primitive) {
      // use reflection to call primitive stuff
      Value method = ((ValueFormula) f.args.get(0)).value;
      String id = ((NameValue) method).id;
      // all actions takes a fixed set as argument
      if (id.equals("set")) {
        Formula path = f.args.get(1);
        Value value = ((ValueFormula) f.args.get(2)).value;
        return naiveSetJsonPath(path, value);
      } else if (id.equals("new")) {
        Value value = ((ValueFormula) f.args.get(1)).value;
      }
    }
    return null;
  }
  
  private Object naiveSetJsonPath(Formula path, Value v) {
    return null;
  }
}
