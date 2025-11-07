import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class JUnitConfigTest {
    @BeforeClass // @BeforeAll của JUnit
    public static void setUpBeforeClass()throws Exception{

    }
    @Test
    public void testConfig(){
        String str = "Test configuration";
        Assertions.assertEquals("Test configuration", str);
    }
    @AfterClass
    public static void tearDownAfterClass() throws Exception{

    }
}