import org.example.utility.ArrayUtility;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class ArraySumEvenTest {
    @Test
    public void testArraySumNormalEvenTest(){
        assertEquals(250000, ArrayUtility.ArraySumEven());
    }
    @Test
    public void testArraySumEvenBoundaryTest(){
        long expected = 1000* (1000)/2/2;
        assertEquals(expected, ArrayUtility.ArraySumEven());
    }
    @Test
    public void testArraySumEvenFormulaTest(){
        int n=1000;
        long expected = (long) n* (n)/2/2;
        assertEquals(expected, ArrayUtility.ArraySumEven());
    }
    @Test
    public void testArrayConsitencyTest(){
        long result1 = ArrayUtility.ArraySumEven();
        long result2 = ArrayUtility.ArraySumEven();
        assertEquals(result1, result2);
    }
    @Test
    public void testArrayDoesNotOverflowTest(){
        long result1 = ArrayUtility.ArraySumEven();
        assertTrue(result1<Long.MAX_VALUE);
    }
}
