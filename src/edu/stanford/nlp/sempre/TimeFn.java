package edu.stanford.nlp.sempre;

/**
 * Maps a string to a Time.
 *
 * @author Nadav Lidor
 */
public class TimeFn extends SemanticFn {
  public DerivationStream call(final Example ex, final Callable c) {
    return new SingleDerivationStream() {
      @Override
      public Derivation createDerivation() {
        String value = ex.languageInfo.getNormalizedNerSpan("DATE", c.getStart(), c.getEnd());
        if (value == null)
          return null;
        
        TimeValue timeValue = TimeValue.parseTimeValue(value);
        if (timeValue == null)
          return null;
        return new Derivation.Builder()
                .withCallable(c)
                .formula(new ValueFormula<>(timeValue))
                .type(SemType.timeType)
                .createDerivation();
      }
    };
  }
}


