package edu.stanford.nlp.sempre.interactive.test;

import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import org.testng.Assert;
import org.testng.annotations.Test;

import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.Executor;
import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Formulas;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.NaiveKnowledgeGraph;
import edu.stanford.nlp.sempre.StringValue;
import edu.stanford.nlp.sempre.interactive.DALExecutor;
import edu.stanford.nlp.sempre.interactive.Item;
import edu.stanford.nlp.sempre.interactive.SymbolTable;
import edu.stanford.nlp.sempre.interactive.World;
import edu.stanford.nlp.sempre.interactive.voxelurn.Color;
import edu.stanford.nlp.sempre.interactive.voxelurn.Voxel;
import fig.basic.LispTree;
import fig.basic.LogInfo;

/**
 * Tests the DALExecutor
 *
 * @author sidaw
 */

public class SymbolTest {
  DALExecutor executor = new DALExecutor();

  public static void runFormula(DALExecutor executor, String formula, ContextValue context,
      Predicate<World> checker) {
    Formulas.opts.shortNamedValue = true;
    
    LogInfo.begin_track("formula: %s", formula);
    DALExecutor.opts.worldType = "VoxelWorld";
    Executor.Response response = executor.execute(Formulas.fromLispTree(LispTree.proto.parseFromString(formula)),
        context);

    NaiveKnowledgeGraph graph = (NaiveKnowledgeGraph) context.graph;
    String wallString = ((StringValue) graph.triples.get(0).e1).value;
    // LogInfo.logs("Preconvert %s", response.value);
    String jsonStr = ((StringValue) response.value).value;
    
    LogInfo.logs("Start:\t%s", wallString);
    LogInfo.logs("Result:\t%s", jsonStr);
    LogInfo.end_track();

    if (checker != null) {
      if (!checker.test(World.fromContext("VoxelWorld", getContext(jsonStr)))) {
        LogInfo.end_track();
        Assert.fail(jsonStr);
      }
    }
  }
  
  private static Formula F(String form) {
    return Formulas.fromLispTree(LispTree.proto.parseFromString(form));
  }

  private static ContextValue getContext(String blocks) {
    // a hack to pass in the world state without much change to the code
    String strigify2 = Json.writeValueAsStringHard(blocks); // some parsing
                                                            // issue inside
                                                            // lisptree parser
    return ContextValue.fromString(
        String.format("(context (graph NaiveKnowledgeGraph ((string \"%s\") (name b) (name c))))", strigify2));
  }

  @Test(groups = { "Interactive" })
  public void testDefine() {
    // a rare unsupported operations bug
    String defaultBlocks = "[[1,1,1,\"fake\",[\"S\"]]]";
    ContextValue context = getContext(defaultBlocks);
    LogInfo.begin_track("testDefine");
    SymbolTable.getSymbolTable().addSymbol("tower", F("(:loop (number 3) (: add (name red color) (name top dir)))"));
    runFormula(executor, "(:: tower)",
        context, x -> x.allItems.size() == 4);

    runFormula(executor, "(:def tower (:loop (number 4) (: add (name red color) (name top dir))))",
        context, x -> true);
    runFormula(executor, "(:: tower 1)",
        context, x -> x.allItems.size() == 5);
    runFormula(executor, "(:: tower 0)",
        context, x -> x.allItems.size() == 4);
    LogInfo.end_track();
  }
  
  @Test(groups = { "Interactive" })
  public void testBasicSub() {
    // a rare unsupported operations bug
    String defaultBlocks = "[[1,1,1,\"fake\",[\"S\"]]]";
    ContextValue context = getContext(defaultBlocks);
    LogInfo.begin_track("testBasicSub");
    runFormula(executor, "(:def tower2 (:loop (number 4) (: add (name red color) (name top dir))))",
        context, x -> true);
    runFormula(executor, "(:sub (:: tower2 0) (number 4) (number 5))",
        context, x -> x.allItems.size() == 6);
    runFormula(executor, "(:sub (:: tower2 0) red blue)",
        context, x -> x.allItems.size() == 5);
    runFormula(executor, "(:sub (:loop (number 4) (: add (name red color) (name top dir))) (number 4) (number 5))",
        context, x -> x.allItems.size() == 6);
    runFormula(executor, "(:sub (:loop (number 4) (: add (name red color) (name top dir))) red blue)",
        context, x -> x.allItems.size() == 5
        && x.all().stream().anyMatch(i -> ((Voxel)i).color.equals(Color.fromString("blue"))));
    runFormula(executor, "(:sub (:loop (number 4) (: add (name red color) (name top dir))) top bot)",
        context, x -> x.allItems.size() == 5
        && x.all().stream().anyMatch(i -> ((Voxel)i).height < 0));
    
    // check that some variations behave normally
    runFormula(executor, "(:sub (:loop (number 4) (: add (name red color) (name top dir))) (name red color) blue)",
        context, x -> x.allItems.size() == 5
        && x.all().stream().anyMatch(i -> ((Voxel)i).color.equals(Color.fromString("blue"))));
    runFormula(executor, "(:sub (:loop (number 4) (: add (name red color) top)) (name top dir) bot)",
        context, x -> x.allItems.size() == 5
        && x.all().stream().anyMatch(i -> ((Voxel)i).height < 0));
    LogInfo.end_track();
  }
  
  
  @Test(groups = { "Interactive" })
  public void testShortForm() {
    // a rare unsupported operations bug
    String defaultBlocks = "[[1,1,1,\"fake\",[\"S\"]]]";
    ContextValue context = getContext(defaultBlocks);
    LogInfo.begin_track("testBasicSub");
    runFormula(executor, "(:def tower2 (:loop (number 4) (: add red:C top:D)))",
        context, x -> true);
    runFormula(executor, "(:sub (:: tower2 0) (number 4) (number 5))",
        context, x -> x.allItems.size() == 6);
    runFormula(executor, "(:sub (:: tower2 0) red blue)",
        context, x -> x.allItems.size() == 5);
    runFormula(executor, "(:sub (:loop (number 4) (: add (name red color) (name top dir))) (number 4) (number 5))",
        context, x -> x.allItems.size() == 6);
    runFormula(executor, "(:sub (:loop (number 4) (: add red:C (name top dir))) red:C blue:C)",
        context, x -> x.allItems.size() == 5
        && x.all().stream().anyMatch(i -> ((Voxel)i).color.equals(Color.fromString("blue"))));
    runFormula(executor, "(:sub (:loop (number 4) (: add red:C top:D)) top bot)",
        context, x -> x.allItems.size() == 5
        && x.all().stream().anyMatch(i -> ((Voxel)i).height < 0));
    
    // check that some variations behave normally
    runFormula(executor, "(:sub (:loop (number 4) (: add (name red color) (name top dir))) red:C blue)",
        context, x -> x.allItems.size() == 5
        && x.all().stream().anyMatch(i -> ((Voxel)i).color.equals(Color.fromString("blue"))));
    runFormula(executor, "(:sub (:loop (number 4) (: add (name red color) top:D)) (name top D) bot)",
        context, x -> x.allItems.size() == 5
        && x.all().stream().anyMatch(i -> ((Voxel)i).height < 0));
    LogInfo.end_track();
  }
  
  
  // currently, do not expand all named functions recursively
  @Test(groups = { "Interactive" })
  public void testRecurisveSub() {
    // a rare unsupported operations bug
    String defaultBlocks = "[[1,1,1,\"fake\",[\"S\"]]]";
    ContextValue context = getContext(defaultBlocks);
    LogInfo.begin_track("testRecurisveSub");
    runFormula(executor, "(:def tower2 (:loop (number 4) (: add (name red color) (name top dir))))",
        context, x -> true);
    runFormula(executor, "(:sub (:loop (number 3) (:: tower2 0)) (number 3) (number 5))",
        context, x -> x.allItems.size() == 21);
    runFormula(executor, "(:sub (:sub (:loop (number 4) (: add (name red color) top)) red blue) (number 4) (number 5))",
        context, x -> x.allItems.size() == 6
        && x.all().stream().anyMatch(i -> ((Voxel)i).color.equals(Color.fromString("blue"))));
    runFormula(executor, "(:sub (:sub (:: tower2 0) red blue) (number 4) (number 5))",
        context, x -> x.allItems.size() == 5
        && x.all().stream().anyMatch(i -> ((Voxel)i).color.equals(Color.fromString("blue"))));

    runFormula(executor, "(:sub (:sub (:sub (:loop (number 4) (: add (name red color) top)) red blue) (number 4) (number 5)) top bot)",
        context, x -> x.allItems.size() == 6
        && x.all().stream().anyMatch(i -> ((Voxel)i).color.equals(Color.fromString("blue")))
        && x.all().stream().anyMatch(i -> ((Voxel)i).height < 0));

    LogInfo.end_track();
  }
}
