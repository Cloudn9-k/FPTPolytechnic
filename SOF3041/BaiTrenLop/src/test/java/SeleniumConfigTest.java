
import org.junit.jupiter.api.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;

public class SeleniumConfigTest {
    private WebDriver driver;
    @BeforeTest
    public void setup(){
        driver = new ChromeDriver();
    }
    @AfterTest
    public void teardown(){
        if (driver != null){
            driver.quit();
        }
    }
    @Test
    public void testPageTitle(){
        driver.get("https://google.com");
        Assert.assertEquals(driver.getTitle(),"Google");
    }
}
