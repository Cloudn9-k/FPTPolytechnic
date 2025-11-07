import com.example.SOF3041.Calculator;


import org.junit.jupiter.api.*;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.*;

import java.util.Locale;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.*;

@TestInstance(TestInstance.Lifecycle.PER_METHOD)
public class CalculatorTest {
    // Khai báo biến tham chiếu lớp Calculator
    private Calculator calculator;

    @BeforeAll // Chạy một lần duy nhat truoc tat ca cac test
    static void setUpAll() {
        System.out.println("Run once before all tests");
    }

    @BeforeEach // Chạy trước mỗi test
    void setUp() {
        // Khởi tạo đối tượng trong Calculator
        calculator = new Calculator();
        System.out.println("Run once before each test");
    }

    // Phép cộng
    @Test
    void testAdd() {
        assertEquals(4, calculator.add(2, 2));
    }

    // Phép trừ
    @Test
    void testSubtract() {
        assertEquals(-1, calculator.subtract(2, 3));
    }

    // Phép nhân
    @Test
    void testMultiply() {
        assertEquals(12, calculator.multiply(4, 3));
    }

    // Phép chia
    @Test
    void testDivide() {
        assertEquals(6, calculator.divide(36, 6));
    }

    // 1. Sử dụng assertThrows (Hiện đại và dễ dùng)
    @Test
    public void testDivideByZero_assertThrows() {
        // Bước 1: Gọi phương thức assertThrows và truyền tham số để phát sinh ngoại lệ
        ArithmeticException ex = assertThrows(ArithmeticException.class,
                () -> calculator.divide(3, 0)
        );
        // Bước 2: Kiểm tra thoong điệp của ngoại lệ
        assertEquals("Cannot divide by zero", ex.getMessage());
    }

    // 2. Sủ dụng try...catch
    @Test
    public void testDivideByZero_tryCatch() {
        try {
            // Phát sinh ngoại lệ
            calculator.divide(2, 0);
            // Nếu không có ngoại le thì test fail
            fail("Expected ArithmeticException was not thrown!");
        } catch (ArithmeticException e) {
            // Kiểm tra ngoại lệ
            assertEquals("Cannot divide by zero", e.getMessage());
        }
    }
    @Test
    public void testMultipleByZero_helper() {
        // Gọi helper để kiểm tra exception
        ArithmeticException ex = expextedException(ArithmeticException.class, () ->  calculator.divide(3, 0));
        // Kiểm tra ngoại lệ
        assertTrue(ex.getMessage().contains("Cannot divide by zero"));
    }
    @AfterAll // Chạy 1 lần duy nhâ sau khi tất cả test đã hoàn thành
    static void tearDownAfterClass() {
        System.out.println("Run once after each tests");
    }

    @Test
    public void testAllOperatorWithInternalError(){
        assertAll("Minh họa gom nhiều lỗi (Error Collector)",
                // Sai
                () -> assertEquals(6, calculator.add(2,3)),
                // Sai
                () -> assertEquals(3, calculator.subtract(2,3)),
                // Sai
                () -> assertEquals(3, calculator.divide(12,4)),
                // Sai
                () -> assertEquals(3, calculator.multiply(2,3))
        );
    }

//    @Test
    @ParameterizedTest
    @ValueSource(ints = {1,2,3,4,5})
    @DisplayName("ValueSource: Kiểm tra add(x,3)")
    public void testAdd_withValueSource(int number) {
        int expected = number + 3;
        assertEquals(number + 3, calculator.add(number, 3));
        System.out.println("Result = " + expected);
    }

    // Sư dụng @CsvSource
    @ParameterizedTest
    @CsvSource({
            // Mỗi chuỗi tham số a,b,expect sẽ cách nhau bơi dấu phây
            "1, 2, 3",
            "6, 7, 13",
            "-3, 3, 10"
    })
    void testAdd_withSource(int a, int b, int expected) {
        assertEquals(expected, calculator.add(a, b));
        System.out.println("Kết qua: " + calculator.add(a, b));
    }

    // Sư dụng @CsvFileSource
    @ParameterizedTest
    @CsvFileSource(resources = "/test-data.csv", numLinesToSkip = 1)
    void testAdd_withCsvFileSource(int a, int b, int expected) {
        assertEquals(expected, calculator.add(a, b));
        System.out.println("Kết qua: " + calculator.add(a, b));
    }
    //@MethodSource
    @ParameterizedTest
    @MethodSource("addAgrumentsProvider")
    void testAdd_withMethodSource(int a, int b, int expected) {
        assertEquals(expected, calculator.add(a, b));

    }
    static Stream<Arguments> addAgrumentsProvider() {
        return Stream.of(
                Arguments.of(3,4,7),
                Arguments.of(100,200,300),
                Arguments.of(-1,-2,-3)
        );
    }

//    @ParameterizedTest
//    @EnumSource(TestAddition.class)
//    void testAdd_withEnumSource(TestAddition addition) {
//        int x = switch(addition){
//            case ONE ->1;
//            case TWO ->2;
//            case THREE ->3;
//        };
//        int result =calculator.add(x,10);
//        assertEquals(x+ 100,result);
//    }

    enum TestAddition{
        ONE, TWO,  THREE
    }

    // Hàm tùy biến bất ngoại lệ để tái sử dụng
    private static <T extends Throwable> T expextedException(Class<T> type, Runnable code) {
        // Tái sử dụng assertThrows, trả về exception để kiểm tra
        return assertThrows(type, code::run);
    }
}