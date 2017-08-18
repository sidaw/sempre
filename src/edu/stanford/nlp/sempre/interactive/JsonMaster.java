package edu.stanford.nlp.sempre.interactive;

import java.util.List;
import java.util.Map;

import edu.stanford.nlp.sempre.Builder;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.JsonValue;
import edu.stanford.nlp.sempre.Master;
import edu.stanford.nlp.sempre.Session;
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

  @SuppressWarnings("unchecked")
  void handleCommand(Session session, String line, Response response) {
    List<Object> args = Json.readValueHard(line, List.class);
    String command = (String) args.get(0);
    Map<String, Object> kv = (Map<String, Object>) args.get(1);
    QueryStats stats = new QueryStats(response, command);

    // Start of interactive commands
    if (command.equals("q")) {
      /* Issue a query. This will create a new Example.
       *
       * Usage:
       *   ["q", {
       *     "utterance": utterance (string),
       *     "context": Vega-lite context (object),
       *     "schema": schema map (object),
       *   }]
       */
      String utt = (String) kv.get("utterance");
      session.context = new VegaJsonContextValue(kv.get("context"))
          .setFields((Map<String, Map<String, String>>) kv.get("schema"));

      // Create the example
      Example ex = exampleFromUtterance(utt, session);
      if ("random".equals(utt)) {
        // For debugging the "random" command from the interface
        VegaRandomizer randomizer = new VegaRandomizer(ex, builder);
        response.ex = randomizer.generate(50);
      } else {
        builder.parser.parse(builder.params, ex, false);
        stats.size(ex.predDerivations != null ? ex.predDerivations.size() : 0);
        stats.status(InteractiveUtils.getParseStatus(ex));
        session.updateContext();
        LogInfo.logs("parse stats: %s", response.stats);
        response.ex = ex;
      }

    } else if (command.equals("random")) {
      /* Generate random derivations
       *
       * Usage:
       *   ["random", {
       *     "amount": amount (int),
       *     "context": Vega-lite context (object),
       *     "schema": schema map (object),
       *   }]
       */
      int amount = (int) kv.get("amount");
      session.context = new VegaJsonContextValue(kv.get("context"))
          .setFields((Map<String, Map<String, String>>) kv.get("schema"));
      Example ex = exampleFromUtterance("", session);
      VegaRandomizer randomizer = new VegaRandomizer(ex, builder);
      response.ex = randomizer.generate(amount);

    } else if (command.equals("accept")) {
      /* Accept the user's selection.
       *
       * Usage:
       *   ["accept", {
       *     "type": type (string),
       *     "utterance": utterance (string),
       *     "context": Vega-lite context (object),
       *     "schema": schema map (object),
       *     "targetValue": targetValue (...),
       *     "targetFormula": targetFormula (...),
       *     "issuedQuery": issuedQuery (string; only for type = label),
       *   }]
       *
       * Using lastExample seems unreliable, different tabs etc.
       */
      String utt = (String) kv.get("utterance");
      Object targetValue = kv.get("targetValue");
      Object context = kv.get("context");
      Example ex = exampleFromUtterance(utt, session);
      ex.targetValue = new JsonValue(targetValue);
      ex.context = new VegaJsonContextValue(context)
          .setFields((Map<String, Map<String, String>>) kv.get("schema"));
      builder.parser.parse(builder.params, ex, true);
      learner.onlineLearnExample(ex);

    } else if (command.equals("reject")) {
      /* Reject a plot.
       *
       * Usage:
       *   ["reject", {
       *     "utterance": utterance (string),
       *     "context": Vega-lite context (object),
       *     "schema": schema map (object),
       *     "targetValue": targetValue (...),
       *   }]
       */
      // TODO

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
