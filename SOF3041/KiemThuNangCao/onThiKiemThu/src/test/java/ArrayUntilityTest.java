import org.example.ArrayUntility;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class ArrayUntilityTest {
    //Kiểm tra kết quả chính xác
    @Test
    void sumArrayNormal(){
        assertEquals(500500, ArrayUntility.sumArray());
    }

    //kiểm tra giá trị biên
    @Test
    public void sumArrayBienTren(){
        long expected = 1000L * (1000 + 1) / 2;
        assertEquals(expected, ArrayUntility.sumArray());
    }

    //Test theo công thức GAUSS
    @Test
    public void sumArray(){
        int n = 10000;
        long expected = (long) n * (n + 1) / 2;
        assertEquals(expected, ArrayUntility.sumArray());
    }

    //Test tính ổn định của hàm
    @Test
    public void sumArrayConsistency(){
        long result1 = ArrayUntility.sumArray();
        long result2 = ArrayUntility.sumArray();
        assertEquals(result1, result2);
    }

    //TEst giá trị không bị tràn
    @Test
    void sumArray5(){
        long result1 = ArrayUntility.sumArray();
        assertTrue(result1 < Long.MAX_VALUE, "Giá trị không vượt quá phạm vi của kiểu long");
    }



}
