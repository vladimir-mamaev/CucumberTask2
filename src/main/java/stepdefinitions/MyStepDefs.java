package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class MyStepDefs {

    WebDriver driver;

    @Given("^I configured WebDriver$")
    public void configureWebDriver() {
        System.setProperty("webdriver.chrome.driver", "src/main/java/drivers/chromedriver.exe");
        driver = new ChromeDriver();
    }

    @When("^I open the '(.*)' page$")
    public void openPage(String url) {
        driver.get(url);
    }

    @Then("^I verify header is '(.*)'$")
    public void verifyHeader(String expectedHeaderName) {
        Assertions.assertEquals(expectedHeaderName, driver.getTitle());
    }

    @Then("^I close browser$")
    public void closeWebDriver() {
        if (driver != null) {
            driver.quit();
        }
    }

}
