import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class AuthenticationTest {
    private static WebDriver driver;

    @BeforeAll
    public static void setup() {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
    }

    @AfterAll
    public static void teardown() {
        driver.quit();
    }

    @ParameterizedTest
    @CsvSource({"Khang,Tongankhang138@gmail.com,ankhang20"})
    public void registration(String username, String email, String password) {
        driver.get("https://www.hoctotlamhay.vn/register");
        WebElement nameFiel = driver.findElement(By.id("name"));
        WebElement emailFiel = driver.findElement(By.id("user_email"));
        WebElement passwordFiel = driver.findElement(By.id("password"));
        WebElement buttonSubmit = driver.findElement(By.xpath("//button[contains(text(),'Đăng ký')]"));
        nameFiel.sendKeys(new CharSequence[]{username});
        emailFiel.sendKeys(new CharSequence[]{email});
        passwordFiel.sendKeys(new CharSequence[]{password});
        buttonSubmit.click();
    }

    @ParameterizedTest
    @CsvSource({"Tongankhang138@gmail.com,ankhang20"})
    public void login(String email, String password) {
        driver.get("https://www.hoctotlamhay.vn/login");
        WebElement emailFiel = driver.findElement(By.id("user_email"));
        WebElement passwordFiel = driver.findElement(By.id("password"));
        WebElement buttonSubmit = driver.findElement(By.xpath("//button[contains(text(),'Đăng nhập')]"));
        emailFiel.sendKeys(new CharSequence[]{email});
        passwordFiel.sendKeys(new CharSequence[]{password});
        buttonSubmit.click();
    }
}
