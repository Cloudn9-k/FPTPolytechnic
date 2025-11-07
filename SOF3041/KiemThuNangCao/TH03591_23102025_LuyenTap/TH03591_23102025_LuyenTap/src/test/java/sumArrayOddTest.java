import dev.failsafe.internal.util.Assert;
import org.example.utility.ArrayOddNumber;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class sumArrayOddTest {
    @Test
    public void sumArrayOddNormalTest() {
        assertEquals(250000, ArrayOddNumber.sumArrayOddNumbers());
    }
    @Test
    public void sumArrayOddUpperTest() {
        long sum = 1000 * ((1000+1)/2)/2;
        assertEquals(sum, ArrayOddNumber.sumArrayOddNumbers());
    }
    @Test
    public void sumArrayOddConsitencyTest() {
        long result1 = ArrayOddNumber.sumArrayOddNumbers();
        long result2 = ArrayOddNumber.sumArrayOddNumbers();
        assertEquals(result1, result2);
    }
    @Test
    public void sumArrayOddDoesOverTest() {
        long result1 = ArrayOddNumber.sumArrayOddNumbers();
        assertTrue(result1<Long.MAX_VALUE,"không bị tràn số");
    }
    @Test
    public void sumArrayOddWrongTest() {
        assertNotEquals(250001, ArrayOddNumber.sumArrayOddNumbers());
    }
}
