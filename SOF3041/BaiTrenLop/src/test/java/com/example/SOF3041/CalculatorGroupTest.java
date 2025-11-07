package com.example.SOF3041;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class CalculatorGroupTest {
    private Calculator calculator = new Calculator();
    @BeforeClass(alwaysRun = true)
    public void setUp() {
        calculator = new Calculator();
    }
    //Nhóm Math
    @Test(groups = "math")
    private void testAdd() {
        Assert.assertEquals(calculator.add(1, 2), 3);
    }
    @Test(groups ="math")
    private void testSubtract() {
        Assert.assertEquals(calculator.subtract(1, 2), -1);
    }
    @Test(groups = "math")
    private void testMultiply() {
        Assert.assertEquals(calculator.multiply(2, 2), 2);
    }

    //Nhóm phép chia
    @Test(groups = "division")
    private void testDivide() {
        Assert.assertEquals(calculator.divide(2, 2), 1);
    }
    @Test(groups = "division")
    private void testDivideByZero() {
       calculator.divide(3, 0);
    }
    @AfterClass
    public void tearDown() {
        calculator = null;
    }

}
