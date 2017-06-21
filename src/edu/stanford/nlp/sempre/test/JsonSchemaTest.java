package edu.stanford.nlp.sempre.test;

import edu.stanford.nlp.sempre.JsonSchema;
import org.testng.annotations.Test;
import static org.testng.AssertJUnit.assertEquals;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;


/**
 * Created by Kelvin on 6/2/17.
 */
public class JsonSchemaTest {
    private String VEGA_LITE_PATH = "/Users/Kelvin/Dropbox/projects/sempre-plot/plot/vega-lite-v2.json";

    @Test
    public void testSchemas1() throws IOException {
        File f = new File(VEGA_LITE_PATH);
        JsonSchema schema = JsonSchema.fromFile(f);

        List<JsonSchema> transformSchemas = schema.schemas("transform", "items");

        // should return two allowed schemas
        assertEquals(2, transformSchemas.size());

        // let's focus on first one
        JsonSchema transformSchema = transformSchemas.get(0);

        // since it's doing depth first search and removing later duplicates, this should be the path we see
        List<String> correctPath = Arrays.asList("anyOf[0]", "properties", "transform", "items", "anyOf[0]", "#/definitions/FilterTransform");
        assertEquals(correctPath, transformSchema.schemaPath());

        // we should only see one property
        List<String> properties = transformSchema.properties();
        assertEquals(1, properties.size());
        assertEquals("filter", properties.get(0));

        List<JsonSchema> filterSchemas = transformSchema.schemas("filter");

        // should be 5 allowed schemas
        assertEquals(5, filterSchemas.size());

        // last option should be string
        JsonSchema stringFilter = filterSchemas.get(4);
        assertEquals("string", stringFilter.type());
    }

    @Test
    public void testSchemas2() throws IOException {
        File f = new File(VEGA_LITE_PATH);
        JsonSchema schema = JsonSchema.fromFile(f);

        List<JsonSchema> repeatSchemas = schema.schemas("encoding", "column", "field", "repeat");

        // should be only one match
        assertEquals(1, repeatSchemas.size());

        JsonSchema repeatSchema = repeatSchemas.get(0);

        List<String> correctPath = Arrays.asList("anyOf[0]", "properties", "encoding",
                "#/definitions/EncodingWithFacet", "properties", "column",
                "#/definitions/FacetFieldDef", "properties", "field", "anyOf[0]", "properties", "repeat");

        assertEquals(correctPath, repeatSchema.schemaPath());

        // test that enums is working
        assertEquals("string", repeatSchema.type());
        assertEquals(Arrays.asList("column", "row"), repeatSchema.enums());
    }
}
