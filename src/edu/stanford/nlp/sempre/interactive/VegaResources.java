package edu.stanford.nlp.sempre.interactive;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.testng.util.Strings;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import com.google.common.collect.Sets;

import edu.stanford.nlp.sempre.Formula;
import edu.stanford.nlp.sempre.Json;
import fig.basic.IOUtils;
import fig.basic.LogInfo;
import fig.basic.Option;

/**
 * exposes some static vega resources
 * @author sidaw
 */

@JsonIgnoreProperties(ignoreUnknown = true)
public class VegaResources {
  public static class Options {
    @Option(gloss = "File or directory containing example vega ") List<String> vegaSpecifications;
    @Option(gloss = "File containing all valid VegaPaths") String allVegaJsonPaths;
  }
  public static Options opts = new Options();

  public static VegaLitePathMatcher allPathsMatcher;
  public static VegaLitePathMatcher templatesPathsMatcher;
  
  private Path savePath = Paths.get(JsonMaster.opts.intOutputPath, "TemplateJsonPaths.txt");
  
  public static ArrayList<String> templates;
  public static Map<String, String> templatesMap;
  
  public VegaResources() {
    try {
      if (opts.vegaSpecifications != null) {
        processVegaTemplates();
        templatesPathsMatcher = new VegaLitePathMatcher(savePath.toString());
        LogInfo.logs("loaded %d keys from templates", templatesPathsMatcher.pathKeys().size());
      }
      
      if (opts.allVegaJsonPaths != null) {
        LogInfo.logs("VegaResources loading possible paths");
        allPathsMatcher = new VegaLitePathMatcher(opts.allVegaJsonPaths);
        LogInfo.logs("loaded %d keys", allPathsMatcher.pathKeys().size());
      }
      
    }
    catch (IOException e) {
      e.printStackTrace();
    }
  }

  private void processVegaTemplates() {
    LogInfo.begin_track("processVegaTemplates");
    templates = new ArrayList<>();
    templatesMap = new HashMap<String,String>();
    for (String path : opts.vegaSpecifications) {
      File file = new File(path);
      if (file.isFile() && file.getName().endsWith(".json"))
        load(file);
      else {
        for (final File fileEntry : file.listFiles()) {
          if (fileEntry.getName().endsWith(".json")) {
            load(fileEntry);
          }
        }
      }
    }

    List<String> allPaths = new ArrayList<>();
    for (String json : templates) {
      allPaths.addAll(JsonUtils.allPaths(JsonUtils.toJsonNode(Json.readMapHard(json))));
    }
    List<String> uniquePaths = Sets.newHashSet(allPaths).stream().filter(p -> !p.contains("[")).collect(Collectors.toList());
    Collections.sort(uniquePaths, Ordering.usingToString());
    
    {
      PrintWriter writer = IOUtils.openOutHard(JsonMaster.opts.intOutputPath + "/PathInTemplates.txt");
      for (String path: uniquePaths) {
        writer.println(path);
      }
      writer.close();
    }

    LogInfo.logs("got %d paths, %d unique", allPaths.size(), Sets.newHashSet(allPaths).size());
    LogInfo.end_track();
  }

  private void load(File path) {
    LogInfo.logs("Reading template from %s", path);
    String text;
    try {
      text = String.join("", IOUtils.readLines(path.getAbsolutePath()));
      templates.add(text);
      templatesMap.put(path.getPath(), text);
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
  }
}

