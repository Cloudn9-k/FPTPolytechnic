import org.example.utility.Array;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;


public class ArrayTest {
    @Test
    public void sumArrayNormalTest() {
        assertEquals(250000, Array.ArrayEven());
    }
    //test tính ổn định
    @Test
    public void sumArrayOddConsistencyTest() {
        long result1 = Array.ArrayEven();
        long result2 = Array.ArrayEven();
        assertEquals(result1, result2);
    }
    //Test tràn
    @Test
    public void sumArrayDoesNotOverFlowTest() {
        long result1 = Array.ArrayEven();
        assertTrue(result1 <Long.MAX_VALUE);
    }
    // công thức mẫu gauss
    @Test
    public void sumArrayBoundaryUpperTest() {
        // so chan +1, so le giu nguyen
        long result1 = 1000 * (1000)/2;
        // tuong duong voi tinh tong cac so tu 1-1000
        long result2 = result1/2;
        // tuong duong voi tinh tong cac so le/ chan tu 1-1000
        assertEquals(result2, Array.ArrayEven());
    }
    @Test
    public void sumArrayBoundaryLowerFormulaTest() {
        int  n=1000;
        long result1= (long) n*(n)/2/2;
        assertEquals(result1, Array.ArrayEven());
    }
}
