import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;


public class AuthenticationTest {
    private static WebDriver driver;
    @BeforeAll
    public static void init(){
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
    }
    @AfterAll
    public static void close(){
        if(driver != null){
            driver.quit();
        }
    }
    public void registration(String name, String email, String password){
        nameFiel.sendKeys(name);
        emailFiel.sendKeys(email);
        passwordFiel.sendKeys(password);
        submitButton
    }
    public void loginTest(String username,String email, String password){
        driver.get("http://hoctotlamhay.vn/login");
        WebElement nameFiel = driver.findElement(By.id("username"));
        WebElement emailFiel = driver.findElement(By.id("user_email"));
        WebElement passwordFiel = driver.findElement(By.id("password"));
        WebElement submitButton = driver.findElement(By.xpath("//button[contains(text(),'Đăng nhập')]"));
        nameFiel.sendKeys(username);
        emailFiel.sendKeys(email);
        passwordFiel.sendKeys(password);
        submitButton.click();
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        wait.until(ExpectedConditions.urlContains("http://hoctotlamhay.vn/"));
        WebElement nameElement = wait.until(ExpectedConditions.presenceOfElementLocated(
                By.xpath("//*[contains(text(),'"+ expectedName +"')]")
        ));)
    }

}
