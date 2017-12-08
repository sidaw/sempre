package edu.stanford.nlp.sempre.interactive;

import java.util.*;

public class CanonicalUtteranceGenerator {
  String path;
  String value;
  Map<String,String> complexUtterances = new HashMap<String, String>() {{put("encoding.x.scale.nice", "Set scale to human-friendly value: ");
    put("spec.encoding.color.field", "Set the encoding type for the color field to be ");
    put("encoding.y.stack", "Set stack offset to be ");
    put("layer.encoding.y.aggregate", "Aggregate over the y-axis data using ");
    put("layer.encoding.x.aggregate", "Aggregate over the x-axis data using ");
    put("encoding.y.aggregate", "Aggregate over the y-axis data using ");
    put("encoding.x.aggregate", "Aggregate over the x-axis data using ");
    put("transform.filter","Apply filter ");
    put("encoding.x.scale","Zero baseline value included in the x scale domain is ");
    put("encoding.y.scale","Zero baseline value included in the y scale domain is ");
    put("encoding.color.field","Color the plot using color field from data source: ");
    put("encoding.color.type","Set the color data type to ");
    put("encoding.color","Set the color of the marks to ");}};

  public CanonicalUtteranceGenerator() { }

  //path should be seperated by period, e.g. encoding.y.timeUnit
  public CanonicalUtteranceGenerator(String path, String value) {
    this.path = path;
    this.value = value;
  }

  public String getSimpleCanonicalUtterance() {
    String firstPathKey = "";
    firstPathKey = path.split("\\.")[0];
    //check if path starts with a high level key that can be removed when generating utterance
    if(firstPathKey.equals("encoding") || firstPathKey.equals("layer") || firstPathKey.equals("config") || firstPathKey.equals("spec")) {
      int startPath = firstPathKey.length() + 1;
      if (!path.equals(firstPathKey))
        path = path.substring(startPath);
    }
    String u = "set " + path + " to " + value;
    return u;
  }

  public String getCanonicalUtterance() {
    String u = "";
    for (String key : complexUtterances.keySet()) {
        System.out.println(path);
        if(path.equals(key)) {
            u=complexUtterances.get(key) + value + ".";
        }
    }
    if(u.equals("")) {
        u = getSimpleCanonicalUtterance();
    }
    return u;
  }

  public static void main(String [] args) {
    //example
    CanonicalUtteranceGenerator u = new CanonicalUtteranceGenerator("encoding.color", "blue");
    System.out.println(u.getCanonicalUtterance());
  }
}



