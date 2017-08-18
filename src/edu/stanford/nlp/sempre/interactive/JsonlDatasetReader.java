package edu.stanford.nlp.sempre.interactive;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import edu.stanford.nlp.sempre.*;

public class JsonlDatasetReader implements Dataset.DatasetReader {

  @Override
  public List<Example> read(String path) {
    try (Stream<String> stream = Files.lines(Paths.get(path))) {
      return stream.map(JsonlDatasetReader::exampleFromJson).collect(Collectors.toList());
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  private static Example exampleFromJson(String jsonstr) {
    Map<String, Object> jsonObj = Json.readMapHard(jsonstr);
    return new Example(
        (String) jsonObj.get("id"),
        (String) jsonObj.get("utterance"),
        new VegaJsonContextValue(jsonObj.get("context")),
        null,
        new JsonValue(jsonObj.get("targetValue")),
        null
        );
  }

}
