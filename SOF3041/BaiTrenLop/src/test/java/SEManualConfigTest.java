import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class SEManualConfigTest {
    private WebDriver driver;
    @BeforeEach
    private void setUp(){
        driver = new ChromeDriver();
    }
    @Test
    public void testGoogleTitle(){
        driver.get("https://google.com");
        Assertions.assertEquals("Google",driver.getTitle());
    }
    @AfterEach
    public void tearDown(){
        if (driver != null) {
            driver.quit();
        }
    }
}
