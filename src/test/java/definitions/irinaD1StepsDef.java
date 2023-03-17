package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import support.IrinaD1xpathLib;

import static support.TestContext.getDriver;

public class irinaD1StepsDef {
    @Given("Kira open page of Teachers`s account {string}")
    public void kiraOpenURLOfTeachersSAccount(String LOG_URL) {
        getDriver().get(IrinaD1xpathLib.LOG_URL);
    }

    @Then("Kira is typing {string} into {string}")
    public void kiraIsTypingInto(String text, String xpathname) {
        getDriver().findElement(By.xpath(IrinaD1xpathLib.IrinaDElement(xpathname))).sendKeys(text);
    }

    @And("Kira waits for {int} sec")
    public void kiraWaitsForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("Kira click on element with xpath {string}")
    public void kiraClickOnElementWithXpath(String xpathname) {
        getDriver().findElement(By.xpath(IrinaD1xpathLib.IrinaDElement(xpathname))).click();
    }

    @And("Kira scroll to the element with xpath {string} with offset {int}")
    public void kiraScrollToTheElementWithXpathWithOffset(String xpath, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath(IrinaD1xpathLib.IrinaDElement(xpath)));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);
    }
}
