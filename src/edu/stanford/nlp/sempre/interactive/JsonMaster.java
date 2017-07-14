package edu.stanford.nlp.sempre.interactive;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import com.google.common.base.Strings;

import edu.stanford.nlp.sempre.Builder;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.JsonContextValue;
import edu.stanford.nlp.sempre.JsonValue;
import edu.stanford.nlp.sempre.Master;
import edu.stanford.nlp.sempre.Session;
import fig.basic.IOUtils;
import fig.basic.LispTree;
import fig.basic.LogInfo;
import fig.basic.Option;

/**
 * Handle queries in Json, since embedding json into LispTree is bad
 */
public class JsonMaster extends Master {
  public static class Options {
    @Option(gloss = "Write out new grammar rules")
    public String intOutputPath;
    @Option(gloss = "each session gets a different model with its own parameters")
    public boolean independentSessions = false;
    @Option(gloss = "number of utterances to return for autocomplete")
    public int autocompleteCount = 5;
    @Option(gloss = "only allow interactive commands")
    public boolean onlyInteractive = false;

    @Option(gloss = "allow regular commands specified in Master")
    public boolean allowRegularCommands = false;
    
    @Option(gloss = "initial training set")
    public String dataPath = "";
  }

  public static Options opts = new Options();

  public JsonMaster(Builder builder) {
    super(builder);
  }
  
  @Override
  protected void printHelp() {
    // interactive commands
    LogInfo.log("Should not be run from commandline");
    super.printHelp();
  }

  @Override
  public void runServer() {
    InteractiveServer server = new InteractiveServer(this);
    server.run();
  }

  @Override
  public Response processQuery(Session session, String line) {
    if (session.id.equals("stdin")) {
      return super.processQuery(session, line);
    }
    LogInfo.begin_track("JsonMaster.handleQuery");
    LogInfo.logs("session %s", session.id);
    LogInfo.logs("query %s", line);
    line = line.trim();
    Response response = new Response();
    handleCommand(session, line, response);
    LogInfo.end_track();
    return response;
  }

  void handleCommand(Session session, String line, Response response) {
    @SuppressWarnings("unchecked")
    List<Object> args = Json.readValueHard(line, List.class);
    String command = (String) args.get(0);
    QueryStats stats = new QueryStats(response, command);
    // Start of interactive commands
    if (command.equals("q")) {
      // Syntax ["q", utterance (string), context (object; optional)]
      // Create example
      String utt = (String) args.get(1);
      if (args.size() >= 3) {
        session.context = new JsonContextValue(args.get(2));
      }
      Example ex = exampleFromUtterance(utt, session);

      builder.parser.parse(builder.params, ex, false);

      stats.size(ex.predDerivations != null ? ex.predDerivations.size() : 0);
      stats.status(InteractiveUtils.getParseStatus(ex));
      session.updateContext();
      LogInfo.logs("parse stats: %s", response.stats);
      response.ex = ex;
    } else if (command.equals("accept")) {
      // Syntax ["accept", {"utterance":X, "targetValue":X, "context":X}]
      // using lastExample seems unreliable, different tabs etc.
      Map<String, Object> example = (Map<String, Object>) args.get(1);
      String utt = (String) example.get("utterance");
      Object targetValue = example.get("targetValue");
      Object context = example.get("context");
      Example ex = exampleFromUtterance(utt, session);
      ex.targetValue = new JsonValue(targetValue);
      ex.context = new JsonContextValue(context);
      learner.onlineLearnExample(ex);
    } else if (command.equals("context")) {
      // Syntax ["context"] or ["context", context (object)]
      if (args.size() == 1) {
        LogInfo.logs("%s", session.context);
      } else {
        session.context = new JsonContextValue(args.get(1));
        response.stats.put("context_length", args.get(1).toString().length());
      }
    } else {
      LogInfo.log("Invalid command: " + args);
    }
  }

  private static Example exampleFromUtterance(String utt, Session session) {
    Example.Builder b = new Example.Builder();
    b.setId(session.id);
    b.setUtterance(utt);
    b.setContext(session.context);
    Example ex = b.createExample();
    ex.preprocess();
    return ex;
  }
}
