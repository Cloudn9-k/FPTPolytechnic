package com.example.SOF3041;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class CalculatorDivisionTest {
    Calculator calculator;
    @BeforeClass
    public void setUp() {
        calculator = new Calculator();
    }
    @AfterClass
    public void tearDown() {
        calculator = null;
    }
    @Test
    public void testDivision() {
        Assert.assertEquals(calculator.divide(10, 2), 5);
    }
    @Test(expectedExceptions = ArithmeticException.class)
    public void testDivisionByZero() {
        calculator.divide(10, 0);
    }
}
