package edu.stanford.nlp.sempre.interactive;

import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.ErrorValue;
import edu.stanford.nlp.sempre.Executor;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.StringValue;
import fig.basic.LogInfo;
import fig.basic.Option;

/**
 * Just transforms sempre formulas to some other language, like python
 * 
 * @author sidaw
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
    if (! (formula instanceof JsonFormula))
      throw new RuntimeException("only handles JsonFormula, got: " + formula.getClass());
    try {
      return new Response(new StringValue(formula.toString()));
    } catch (Exception e) {
      // Comment this out if we expect lots of innocuous type checking failures
      if (opts.printStackTrace) {
        LogInfo.log("Failed to execute " + formula.toString());
        e.printStackTrace();
      }
      return new Response(ErrorValue.badJava(e.toString()));
    }
  }
}
