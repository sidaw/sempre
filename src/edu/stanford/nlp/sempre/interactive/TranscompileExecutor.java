package edu.stanford.nlp.sempre.interactive;

import java.util.List;
import java.util.stream.Collectors;

import edu.stanford.nlp.sempre.ActionFormula;
import edu.stanford.nlp.sempre.CallFormula;
import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.ErrorValue;
import edu.stanford.nlp.sempre.Executor;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.ListValue;
import edu.stanford.nlp.sempre.NameValue;
import edu.stanford.nlp.sempre.NumberValue;
import edu.stanford.nlp.sempre.PairListValue;
import edu.stanford.nlp.sempre.StringValue;
import edu.stanford.nlp.sempre.Value;
import edu.stanford.nlp.sempre.ValueFormula;
import fig.basic.LogInfo;
import fig.basic.Option;
import fig.basic.Pair;

/**
 * Just transforms sempre formulas to some other language, like python
 * 
 * @author sidaw
 */
public class TranscompileExecutor extends Executor {
  public static class Options {
    @Option(gloss = "Print stack trace on exception")
    public boolean printStackTrace = false;

    @Option(gloss = "the maximum number of primitive calls until we stop executing")
    public int maxSteps = 1000;
    
    @Option(gloss = "Verbosity")
    public int verbose = 0;
  }

  public static Options opts = new Options();
  SymbolTable symbolTable = SymbolTable.singleton();

  @Override
  public Response execute(Formula formula, ContextValue context) {
    formula = Formulas.betaReduction(formula);
    try {
      return new Response(new StringValue(convert(formula)));
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
  private String convert(Formula formula) {
    if (opts.verbose >= 1) {
      LogInfo.begin_track("convert");
      LogInfo.logs("Executing: %s", formula);
      LogInfo.end_track();
    }
    
    if (formula instanceof CallFormula) {
      CallFormula callFormula = (CallFormula) formula;
      @SuppressWarnings("rawtypes")
      Value method = ((ValueFormula) callFormula.func).value;
      String id = ((NameValue) method).id;
      List<String> argList = callFormula.args.stream().map(x -> convert(x)).collect(Collectors.toList());
      return String.format("%s(%s)", id, String.join(", ", argList));
    }
    
    if (formula instanceof ActionFormula) {
      ActionFormula actionFormula = (ActionFormula) formula;
      String key = ((StringValue)((ValueFormula)actionFormula.args.get(0)).value).value;
      String value = ((NameValue)((ValueFormula)actionFormula.args.get(1)).value).id;
      return String.format("%s=\"%s\"", key, value);
    }
    
    if (formula instanceof ValueFormula) {
      ValueFormula valueFormula = (ValueFormula)formula;
      Value value = valueFormula.value;
      if (value instanceof StringValue) {
        String stringValue = ((StringValue)value).value;
        return String.format("'%s'", stringValue);
      }
      if (value instanceof NumberValue) {
        return String.format("%.1f", ((NumberValue)value).value);
      }
      if (value instanceof NameValue) {
        return ((NameValue)value).id;
      }
      if (value instanceof ListValue) {
        List<Value> values = ((ListValue)value).values;
        assert values.size()==2 : "dict arg must be size 2";
        return String.format("%s=%s", ((NameValue)values.get(0)).id, convert(Formulas.fromLispTree(values.get(1).toLispTree())));
      }
      return value.toString();
    }
    throw new RuntimeException("not implemented " + formula);
  }
}
