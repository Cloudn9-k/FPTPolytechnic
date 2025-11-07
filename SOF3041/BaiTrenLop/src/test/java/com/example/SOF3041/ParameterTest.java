package com.example.SOF3041;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

public class ParameterTest {
    WebDriver driver;
    @BeforeTest
    @Parameters("browser")
    public void setUp(String browser) {
        if (browser.equals("chrome")) {
            driver = new ChromeDriver();
        }
        else {
            throw new IllegalArgumentException("Browser not supported" + browser);
        }
        driver.manage().window().maximize();
    }
    @Test
    @Parameters({"url","expectedTitle"})
    public void testPageTitle(String url,String expectedTitle) {
        driver.get(url);
        String actualTitle = driver.getTitle();
        Assert.assertEquals(actualTitle,expectedTitle);
    }
    @Test
    @Parameters({"username","password"})
    public void testLogin(String username,String password) {
        driver.get("https://practicetestautomation.com/practice-test-login/");// tự thay bằng web của mình trong thực tế
        WebElement userField = driver.findElement(By.id("username"));
        WebElement passwordField = driver.findElement(By.id("password"));
        WebElement loginButton = driver.findElement(By.id("submit"));
        userField.sendKeys(username);
        passwordField.sendKeys(password);
        loginButton.click();
        boolean success = driver.getPageSource().contains("Logged In Successful");
        Assert.assertTrue(success,"đăng nhập thất bại với tài khoản: " + username);
    }

    @AfterTest
    public void tearDown() {
        if (driver != null) {
            driver.quit();
        }
    }
}
