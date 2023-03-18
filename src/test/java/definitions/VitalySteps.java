package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java.en.And;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.io.File;
import java.util.Date;
import java.util.Iterator;
import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;

import static support.TestContext.getDriver;

public class VitalySteps {

    @And("I move the slider {int} click left {string}")
    public void iMoveTheSliderClickLeft(int numberOfClicks, String sliderXpath) {
        getDriver().findElement(By.xpath(sliderXpath)).sendKeys(Keys.ARROW_LEFT);


    }

    @And("I click on My element with xpath {string}")
    public void iClickOnMyelementWithXpath(String myElement) {
        getDriver().findElement(By.xpath(myElement)).click();
    }

    @Given("Open my url {string}")
    public void openMyUrl(String url) {
        getDriver().get(url);

    }
}
