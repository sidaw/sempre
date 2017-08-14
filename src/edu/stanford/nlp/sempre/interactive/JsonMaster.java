package edu.stanford.nlp.sempre.interactive;

import java.util.List;
import java.util.Map;

import edu.stanford.nlp.sempre.Builder;
import edu.stanford.nlp.sempre.Example;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.JsonContextValue;
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
    QueryStats stats = new QueryStats(response, command);

    // Start of interactive commands
    if (command.equals("q")) {
      /* Issue a query. This will create a new Example.
       *
       * Usage:
       * - ["q", utterance (string)]
       *     The current context will be used.
       * - ["q", utterance (string), context (object)]
       * - ["q", {
       *     "context": context (object),
       *     "fields": fields (array[string]),
       *     "utterance": utterance (string)
       *   }]
       */
      String utt;
      if (args.get(1) instanceof String) {
        utt = (String) args.get(1);
        if (args.size() > 2) {
          session.context = new JsonContextValue(args.get(2));
        }
      } else {
        Map<String, Object> kv = (Map<String, Object>) args.get(1);
        utt = (String) kv.get("utterance");
        session.context = new JsonContextValue(kv.get("context"));
        // TODO: Store the fields somewhere
        List<String> fields = (List<String>) kv.get("fields");
      }

      // Create the example
      Example ex = exampleFromUtterance(utt, session);
      if ("random".equals(utt)) {
        VegaRandomizer randomizer = new VegaRandomizer(ex, builder);
        response.ex = randomizer.generate(100);
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
       * Usage:
       * - ["random", amount, context (object)]
       */
      int amount = (int) args.get(1);
      session.context = new JsonContextValue(args.get(2));
      Example ex = exampleFromUtterance("", session);
      VegaRandomizer randomizer = new VegaRandomizer(ex, builder);
      response.ex = randomizer.generate(amount);

    } else if (command.equals("accept")) {
      /* Accept the user's selection.
       *
       * Usage:
       * - ["accept", {
       *     "context": context (object),
       *     "utterance": utterance (string),
       *     "targetValue": targetValue (...)
       *   }]
       *
       * Using lastExample seems unreliable, different tabs etc.
       */
      Map<String, Object> kv = (Map<String, Object>) args.get(1);
      String utt = (String) kv.get("utterance");
      Object targetValue = kv.get("targetValue");
      Object context = kv.get("context");
      Example ex = exampleFromUtterance(utt, session);
      ex.targetValue = new JsonValue(targetValue);
      ex.context = new JsonContextValue(context);
      builder.parser.parse(builder.params, ex, true);
      learner.onlineLearnExample(ex);

    } else if (command.equals("context")) {
      /* Set the session's context.
       *
       * Usage:
       * - ["context"]
       *     Returns the sessions's context
       * - ["context", context (object)]
       */
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
