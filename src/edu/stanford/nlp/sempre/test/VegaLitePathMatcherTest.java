package edu.stanford.nlp.sempre.test;

import edu.stanford.nlp.sempre.interactive.VegaLitePathMatcher;
import org.testng.annotations.Test;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import static org.testng.AssertJUnit.assertEquals;

/**
 * Created by Kelvin on 6/20/17.
 */
public class VegaLitePathMatcherTest {
    private String VEGA_LITE_PATHS = "plot/vega-lite-paths.txt";

    @Test
    public void testMatch() throws IOException {
        VegaLitePathMatcher matcher = new VegaLitePathMatcher(VEGA_LITE_PATHS);

        assertEquals(1343, matcher.match(Arrays.asList("opacity")).size());

        List<List<String>> matches = matcher.match(Arrays.asList("opacity", "boxWhisker"));
        assertEquals(1, matches.size());
        assertEquals(Arrays.asList("config", "boxWhisker", "opacity"), matches.get(0));
    }
}
