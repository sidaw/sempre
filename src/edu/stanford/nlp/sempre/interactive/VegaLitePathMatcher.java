package edu.stanford.nlp.sempre.interactive;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * Created by Kelvin on 6/20/17.
 */
public class VegaLitePathMatcher {

  // Map from a key to all the paths containing that key
  private Map<String, List<List<String>>> index;
  private List<List<String>> paths;

  public VegaLitePathMatcher(String filePath) throws IOException {
    // load paths from file
    Stream<String> stream = Files.lines(Paths.get(filePath));
    paths = stream.map(line -> Arrays.asList(line.split("\t"))).collect(Collectors.toList());
    buildIndex(paths);
    stream.close();
  }

  public VegaLitePathMatcher(List<List<String>> paths) {
    this.paths = paths;
    buildIndex(paths);
  }

  private void buildIndex(List<List<String>> paths) {
    // TODO Auto-generated method stub
    index = new HashMap<>();
    for (List<String> path : paths) {
      for (String key : path) {
        List<List<String>> matches = index.computeIfAbsent(key, k -> new ArrayList<>());
        matches.add(path);
      }
    }
  }

  // return all allowed path elements
  public Set<String> pathKeys() {
    return index.keySet();
  }

  public List<List<String>> getPaths() {
    return paths;
  }

  /**
   * Given a list of keys, return all paths containing those keys (not necessarily in the order provided).
   */
  public List<List<String>> match(List<String> keys) {
    // get partial matches: anything with at least one of the keys
    if (keys == null || keys.size() == 0)
      return paths;
    List<List<String>> partialMatches = keys.stream()
            .flatMap(key -> index.getOrDefault(key, new ArrayList<>()).stream()).collect(Collectors.toList());

    // filter for paths which contain ALL the keys
    Set<List<String>> matchSet = partialMatches
            .stream().filter(match -> keys.stream().allMatch(match::contains))
            .collect(Collectors.toSet());

    List<List<String>> matches = new ArrayList<>(matchSet);

    // sort the lists by their concatenated string representation
    Function<List<String>, String> join = l -> l.stream().collect(Collectors.joining());
    matches.sort(Comparator.comparing(join));

    return matches;
  }

  /**
   * Given a list of keys, return all paths containing those keys in that order
   */
  public List<List<String>> orderedMatch(List<String> keys) {
    // after removing everything but the keys, equal to the keys
    return match(keys).stream().filter(
        s -> s.stream().filter(keys::contains).collect(Collectors.toList()).equals(keys)).collect(Collectors.toList());
  }
}
