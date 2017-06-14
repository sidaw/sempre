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
import java.util.stream.Stream;

import org.testng.util.Strings;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import com.google.common.collect.Sets;

import edu.stanford.nlp.sempre.Formula;
import fig.basic.IOUtils;
import fig.basic.LogInfo;
import fig.basic.Option;

/**
 * represents json templates
 * @author sidaw
 */

@JsonIgnoreProperties(ignoreUnknown = true)
public class Templates {
  public static class Options {
    @Option(gloss = "Path to load definitions from") List<String> inPaths;
    @Option(gloss = "Directory to load templates from") String dirPath;
  }
  public static Options opts = new Options();

  @JsonProperty
  private static Templates singleton;
  public List<String> templates;
  public Map<String,String> templatesMap;
  public List<String> uniquePaths;

  public List<String> getTemplates() {
    return templates;
  }

  // singleton symbol table
  public static Templates singleton() {
    if (singleton == null) {
      singleton = new Templates();
    }
    return singleton;
  }

  private Templates() {
    templates = new ArrayList<>();
    templatesMap = new HashMap<>();
    if (opts.inPaths != null) {
      for (String path : opts.inPaths) {
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
    }

    List<String> allPaths = new ArrayList<>();
    for (String json : templates) {
      allPaths.addAll(JsonUtils.allPaths(json));
    }
    {
      PrintWriter writer = IOUtils.openOutAppendHard(JsonMaster.opts.intOutputPath + "/UniqueJsonPaths.txt");
      uniquePaths = Lists.newArrayList(Sets.newHashSet(allPaths));
      Collections.sort(uniquePaths, Ordering.usingToString());
      for (String path: uniquePaths) {
        writer.println(path);
      }
      writer.close();
    }
    {
      PrintWriter writer = IOUtils.openOutAppendHard(JsonMaster.opts.intOutputPath + "/AllJsonPaths.txt");
      for (String path: allPaths) {
        writer.println(path);
      }
      writer.close();
    }

    LogInfo.logs("got %d paths, %d unique", allPaths.size(), Sets.newHashSet(allPaths).size());

  }

  private void load(File path) {
    LogInfo.logs("Reading template from %s", path);
    String text;
    try {
      text = String.join("", IOUtils.readLines(path.getAbsolutePath()));
      templates.add(text);
      templatesMap.put(path.getName(), text);
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
  }
}

