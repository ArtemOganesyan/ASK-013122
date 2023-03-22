package definitions;

import com.gargoylesoftware.htmlunit.javascript.host.event.EventListenersContainer;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import support.IrinaD2XpathLib;

import java.io.File;
import java.util.Iterator;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class IrinaD2StepDefs {
    @Given("^Iris opens page \"([^\"]*)\"$")
    public void benOpenPage(String pinUrl) {
        getDriver().get(IrinaD2XpathLib.PIN_URL);
    }

    @Then("^Iris should see page title as \"([^\"]*)\"$")
    public void benShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);

    }

    @Then("^Iris resize window to (\\d+) and (\\d+)$")
    public void benResizeWindowToAnd(int width, int height) {
        Dimension dimension = new Dimension(width, height);
        getDriver().manage().window().setSize(dimension);
    }

    @Then("^Iris waits for (\\d+) sec$")
    public void benWaitsForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @And("^Iris takes screenshot$")
    public void benTakeScreenshot() throws Exception {
        TakesScreenshot screenshotTaker = (TakesScreenshot) getDriver();
        File screenshot = screenshotTaker.getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(screenshot, new File("target/cucumber/screenshot " + System.currentTimeMillis() + ".png"));
    }

    @Then("^Iris clicks on element with xpath \"([^\"]*)\"$")
    public void benClicksOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(IrinaD2XpathLib.getXpath(xpath))).click();
    }

    @Then("^Iris switch to new window$")
    public void benSwichedNewWindow() {
        Iterator<String> iterator = getDriver().getWindowHandles().iterator();
        String newWindow = iterator.next();
        while (iterator.hasNext()) {
            newWindow = iterator.next();
        }
        getDriver().switchTo().window(newWindow);
    }

    @Then("Iris type {string} into element with xpath {string}")
    public void benTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(IrinaD2XpathLib.getXpath(xpath))).sendKeys(text);
    }

    @Then("Iris should see an element with xpath \"([^\"]*)\" should be displayed$")
    public void elementWithXpathShouldBeDisabled(String xpath) {
        assertThat(getDriver().findElement(By.xpath(IrinaD2XpathLib.getXpath(xpath))).isDisplayed()).isTrue();
    }

    @Then("Iris should see an element with xpath {string} should have text as {string}")
    public void irisShouldSeeAnElementWithXpathShouldHaveTextAs(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(IrinaD2XpathLib.getXpath(xpath))).getText();
        assertThat(actualText).isNotEqualTo(text);
    }


    @And("^Iris scroll to the element with xpath \"([^\"]*)\" with offset (\\d+)$")
    public void irisScrollToTheElementWithXpathWithOffsetNumber(String xpath, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath(IrinaD2XpathLib.getXpath(xpath)));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);

    }

    @Then("Iris should see page with xpath {string}")
    public void irisShuldSeePageWithXpath(String xpath) {
        getDriver().findElement(By.xpath(IrinaD2XpathLib.getXpath(xpath))).getText();

    }
    }






