import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Authentication {
    // phai co static
    private static WebDriver driver;

    @BeforeAll
    //static
    public static void setup() {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
    }
    @AfterAll
    public static void teardown() {
        driver.quit();
    }
    // truyen du lieu su @Para
    @ParameterizedTest
    //
    @CsvSource({"Khang,Tongankhang10@gmail.com,ankhang20"})
    public void registration(String username, String email, String password) {
        driver.get("https://www.hoctotlamhay.vn/register");
        WebElement nameFiel = driver.findElement(By.id("name"));
        WebElement emailFiel = driver.findElement(By.id("user_email"));
        WebElement passwordFiel = driver.findElement(By.id("password"));
        WebElement buttonSubmit = driver.findElement(By.xpath("//button[contains(text(),'Đăng ký')]"));
        nameFiel.sendKeys(username);
        emailFiel.sendKeys(new CharSequence[]{email});
        passwordFiel.sendKeys(new CharSequence[]{password});
        buttonSubmit.click();
    }

    @ParameterizedTest
    @CsvSource({"Tongankhang10@gmail.com,ankhang20"})
    public void login(String email, String password) {
        //sua thanh login
        driver.get("https://www.hoctotlamhay.vn/login");
        //Delete ten
        WebElement emailFiel = driver.findElement(By.id("user_email"));
        WebElement passwordFiel = driver.findElement(By.id("password"));
        WebElement buttonSubmit = driver.findElement(By.xpath("//button[contains(text(),'Đăng nhập')]"));
        emailFiel.sendKeys(new CharSequence[]{email});
        passwordFiel.sendKeys(new CharSequence[]{password});
        buttonSubmit.click();
        
    }

}
