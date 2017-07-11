package edu.stanford.nlp.sempre.interactive;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import edu.stanford.nlp.sempre.Json;
import fig.basic.IOUtils;
import fig.basic.LogInfo;
import fig.basic.Option;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import javax.script.Bindings;
import javax.script.Invocable;
import javax.script.ScriptContext;
import javax.script.ScriptEngine;
import javax.script.ScriptException;
import javax.script.ScriptEngineManager;
import javax.script.SimpleBindings;

/**
 * Java bindings to Vega and Vega-lite
 */
public class VegaEngine {
  public static class Options {
    @Option(gloss = "Verbosity")
    public int verbose = 0;

    @Option(gloss = "Compile to SVG")
    public boolean compileToSVG = true;
  }

  public static Options opts = new Options();
  
  /**
   * Results of compiling a Vega or Vega-lite spec
   */
  public static class VegaResponse {
    public VegaResponse(JsonNode vegaSpec, String svg, String message) {
      this.vegaSpec = vegaSpec;
      this.svg = svg;
      this.message = message;
    }
    public final JsonNode vegaSpec;
    public final String svg;
    public final String message;

    public boolean isClean() {
      return !VegaEngine.isCompilerIssue(message);
    }

    /**
     * Checks if compiled without issue and might be different from |context|
     */
    public boolean isGoodChange(VegaResponse context) {
       if (!isClean()) return false;
       if (context == null) return true;
       if (vegaSpec == null) return true;
       if (vegaSpec.equals(context.vegaSpec)) return false;
       if (svg == null) return true;
       return !svg.equals(context.svg);
    }
  }

  private final ScriptEngine scriptEngine;

  /**
   * Check if compiler complained.
   */
  public static boolean isCompilerIssue(String compilerMsg) {
    return compilerMsg.contains("WARN") || compilerMsg.contains("Error");
  }

  public VegaEngine() {
    if (opts.verbose >= 1) {
      LogInfo.begin_track("VegaEngine setup");
    }
    ScriptEngineManager factory = new ScriptEngineManager();
    scriptEngine = factory.getEngineByName("nashorn");
    try {
      scriptEngine.eval(new java.io.FileReader("plot/js-lib/vega.js"));
      scriptEngine.eval(new java.io.FileReader("plot/js-lib/vega-lite.js"));
      scriptEngine.eval(new java.io.FileReader("plot/js-lib/nashorn-polyfill.js"));
      if (opts.verbose >= 1) {
        LogInfo.logs("Vega version: %s", scriptEngine.eval("vega['version']"));
        LogInfo.logs("Vega-lite version: %s", scriptEngine.eval("vl['version']"));
      }
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (opts.verbose >= 1) {
        LogInfo.end_track();
      }
    }
  }

  public static final String COMPILE_SCRIPT =
      "var vega_spec = vl.compile(JSON.parse(vl_str)).spec;" + 
      "var vega_spec_str = JSON.stringify(vega_spec);";
  public static final String SVG_SCRIPT =
      "var view = new vega.View(vega.parse(vega_spec)).renderer('none').initialize();" +
      "view.run();" + 
      "var svg = view.toSVGNow();";

  /**
   * Compile a Vega-lite spec into Vega, then into SVG if compilation worked.
   */
  public VegaResponse compileVegaLite(JsonNode vlSpec, VegaResponse contextResponse) {
    Invocable inv = (Invocable) scriptEngine;
    ScriptContext sc = scriptEngine.getContext();
    Bindings bindings = sc.getBindings(ScriptContext.ENGINE_SCOPE);
    bindings.put("vl_str", Json.writeValueAsStringHard(vlSpec));
    StringWriter sw = new StringWriter();
    PrintWriter pw = new PrintWriter(sw);
    Writer oldWriter = sc.getWriter();
    sc.setWriter(pw);
    VegaResponse vr = null;
    JsonNode vegaSpec = null;
    String svg = null;
    try {
      scriptEngine.eval(COMPILE_SCRIPT);
      String vegaStr = (String) scriptEngine.get("vega_spec_str");
      vegaSpec = Json.readValueHard(vegaStr, JsonNode.class);
      String message = sw.toString();
      vr = new VegaResponse(vegaSpec, null, message);
      if (vr.isGoodChange(contextResponse) && opts.compileToSVG) {
        // Abort if we already know this is not a good change
        // i.e. compiler complaiend or vegaSpec is identical
        scriptEngine.eval(SVG_SCRIPT);
        svg = scriptEngine.get("svg").toString();
        vr = new VegaResponse(vegaSpec, svg, message);
      }
    } catch (ScriptException e) {
      vr = new VegaResponse(vegaSpec, svg, e.getMessage());
    } finally {
      sc.setWriter(oldWriter);
      // Just to be safe, remove bindings
      bindings.remove("vl_spec");
      bindings.remove("vega_spec");
      bindings.remove("vega_spec_str");
      bindings.remove("view");
      bindings.remove("svg");
    }
    return vr;
  }

  public VegaResponse compileVegaLite(JsonNode vlSpec) {
    return compileVegaLite(vlSpec, null);
  }
}
