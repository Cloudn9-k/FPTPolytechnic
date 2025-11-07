package com.example.SOF3041;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class CalculatorMathTest {
    private Calculator calculator;
    @BeforeClass
    public void setUp() {
        calculator = new Calculator();
    }
    @AfterClass
    public void tearDown() {
        calculator = null;

    }
    @Test
    public void testAdd() {
        Assert.assertEquals(calculator.add(1, 2), 3);
    }
    @Test
    public void testSubtract() {
        Assert.assertEquals(calculator.subtract(1, 2), -1);
    }
    @Test
    public void testMultiply() {
        Assert.assertEquals(calculator.multiply(2, 2), 4);
    }
}
