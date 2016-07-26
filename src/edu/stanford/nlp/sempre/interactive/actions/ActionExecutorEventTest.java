package edu.stanford.nlp.sempre.interactive.actions;

import static org.testng.AssertJUnit.assertEquals;

import java.util.*;
import java.util.function.Predicate;

import fig.basic.*;
import edu.stanford.nlp.sempre.*;

import org.testng.Assert;
import org.testng.annotations.Test;

//(date 2016 07 22)

/**
 * Test the ActionExecutor
 * @author Nadav Lidor
 */
public class ActionExecutorEventTest {
  ActionExecutor executor = new ActionExecutor();

  protected static void runFormula(ActionExecutor executor, String formula, ContextValue context, Predicate<FlatWorld> checker) {
    LogInfo.begin_track("formula: %s", formula);
    Executor.Response response = executor.execute(Formulas.fromLispTree(LispTree.proto.parseFromString(formula)), context);
    
    NaiveKnowledgeGraph graph = (NaiveKnowledgeGraph)context.graph;
    String wallString = ((StringValue)graph.triples.get(0).e1).value;
    String jsonStr = ((StringValue)response.value).value;
    LogInfo.logs("Start:\t%s", wallString);
    LogInfo.logs("Result:\t%s", jsonStr);
    LogInfo.end_track();
    
    if (checker != null) {
      if (!checker.test(FlatWorld.fromContext("EventsWorld", getContext(jsonStr)))) {
        Assert.fail(jsonStr);
      }
    }
  }

  private static ContextValue getContext(String events) {
    // a hack to pass in the world state without much change to the code
    String strigify2 = Json.writeValueAsStringHard(events); // some parsing issue inside lisptree parser
    return ContextValue.fromString(String.format("(context (graph NaiveKnowledgeGraph ((string \"%s\") (name b) (name c))))", strigify2));
  }
  
  public Predicate<FlatWorld> selectedSize(int n) {
    return x -> {LogInfo.logs("Got %d, expected %d", x.selected().size(), n); return x.selected().size()==n;};
  }
  
  @Test public void testJoin() {
//    String defaultEvents = "["
//    		+ "[\"Meeting_Pam\",\"office\",\"2016-07-21T10:15:00\",\"2016-07-22T11:15:00\",[]],"
//    		+ "[\"Group_Meeting\",\"office\",\"2016-07-21T10:15:00\",\"2016-07-22T11:15:00\",[]],"
//    		+ "[\"Lunch\",\"cafe\",\"2016-07-23T12:00:00\",\"2016-07-23T13:30:00\",[]],"
//    		+ "[\"Lunch\",\"bar\",\"2016-07-24T12:00:00\",\"2016-07-24T13:30:00\",[]]"
//    		+ "]";
//    ContextValue context = getContext(defaultEvents);
//    LogInfo.begin_track("testJoin");

//    runFormula(executor, "(: select *)", context, selectedSize(4));
//    runFormula(executor, "(: select (or (color red) (color green)))", context, selectedSize(2));
//    runFormula(executor, "(: select (or (row (number 1)) (row (number 2))))", context, x -> x.selected().size() == 3);
//    runFormula(executor, "(: select (col ((reverse row) (color red))))", context, null); // has same col as the row of color red
//    runFormula(executor, "(: select (color ((reverse color) (row 3))))", context, null); // color of the color of cubes in row 3
//    runFormula(executor, "(: select (color ((reverse color) (color ((reverse color) (color red))))))", context,
//        x -> x.selected.iterator().next().get("color").equals("red"));
//    runFormula(executor, "(: select (and (row 1) (not (color green))))", context,
//        x -> x.selected.iterator().next().get("color").equals("blue"));

    
//    LogInfo.end_track();

  }
  
  @Test public void testBasicActions() {
    String defaultEvents = "["
    		+ "[\"Meeting_Pam\",\"office\",\"2016-07-21T10:15:00\",\"2016-07-22T11:15:00\",[]],"
    		+ "[\"Group_Meeting\",\"office\",\"2016-07-21T10:15:00\",\"2016-07-22T11:15:00\",[]],"
    		+ "[\"Lunch\",\"cafe\",\"2016-07-23T12:00:00\",\"2016-07-23T13:30:00\",[]],"
    		+ "[\"Lunch\",\"bar\",\"2016-07-24T12:00:00\",\"2016-07-24T15:00:00\",[]]"
    		+ "]";
    ContextValue context = getContext(defaultEvents);
    LogInfo.begin_track("testBasicActions");
    
    runFormula(executor, "(:s (: select *) (: remove) (: remove))", context, x -> x.allitems.size() == 0);
    runFormula(executor, "(:s (: select *) (: update title (string new_title)))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:scope * (: remove))", context, x -> x.allitems.size() == 0);
    runFormula(executor, "(:scope * (: update title (string new_title)))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:s (: select (title (string Lunch))) (: remove))", context, x -> x.allitems.size() == 2);
    runFormula(executor, "(:s (: select (title (string Lunch))) (: update title (string replaced_TITLE)))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:s (: select (title (string Lunch))) (: update location (string replaced_LOCATION)))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:s (: select (title (string Lunch))) (: update start_weekday (string wed)))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:s (: select (title (string Lunch))) (: update end_weekday (string friday)))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:s (: select (title (string Lunch))) (: move start_weekday (string sat)))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:s (: select (title (string Lunch))) (: move end_weekday (string sun)))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:s (: select (title (string Lunch))) (: update duration_hours (string 3)))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:s (: select *) (: update duration_minutes (string 120)))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:s (: select (duration_hours (string 3))) (: remove))", context, x -> x.allitems.size() == 4);
    runFormula(executor, "(:s (: select (duration_minutes (string 90))) (: remove))", context, x -> x.allitems.size() == 4);
    
    
    
//    runFormula(executor, "(:s (: select (or (color red) (color orange))) (: remove))", context, x -> x.allitems.size() == 3);
//    runFormula(executor, "(:scope (or (color red) (color orange)) (: remove))", context, x -> x.allitems.size() == 3);
//    runFormula(executor, "(:scope (or (color red) (color orange)) (:rep (number 5) (: add red top)))",
//       context, x -> x.allitems.size() == 9);
//    runFormula(executor, "(:scope (or (color red) (color blue)) (:rep (number 5) (:s (: move left) (: move right) (: move left))))",
//        context, null);
    
    LogInfo.end_track();
  }
  
}