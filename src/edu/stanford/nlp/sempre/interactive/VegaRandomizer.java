package edu.stanford.nlp.sempre.interactive;

import edu.stanford.nlp.sempre.Example;

public class VegaRandomizer {

  final Example ex;

  public VegaRandomizer(Example ex) {
    this.ex = ex;
  }

  /**
   * Generate derivations for the example.
   */
  public Example generate(int amount) {
    return ex;
  }

}
