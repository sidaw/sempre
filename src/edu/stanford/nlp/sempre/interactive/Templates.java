package edu.stanford.nlp.sempre.interactive;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

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
  }
  public static Options opts = new Options();
  
  @JsonProperty
  static Templates singleton;
  public List<Object> templates;

  public List<Object> getTemplates() {
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
    if (opts.inPaths != null) {
      for (String path : opts.inPaths) load(path);
    }
  }
  
  private void load(String path) {
    LogInfo.logs("Reading template from %s", path);
    String text;
    try {
      text = String.join("", IOUtils.readLines(path));
      templates.add(text);
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
  }
}

