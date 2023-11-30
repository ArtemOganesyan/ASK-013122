package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import javax.swing.*;

import static support.TestContext.getDriver;

public class AugustStepDefs {
    @Given("August opens page {string}")
    public void augustOpenPage(String url) {
        getDriver().get("https://www.pinterest.com/");
    }

    @And("August wats for {int} sec")
    public void augustWatsForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("August clicks on the button {string}")
    public void augustClickOnTheButton(String xpath) {
        getDriver().findElement(By.xpath("//div[@class='tBJ dyH iFc sAJ xnr tg7 H2s']")).click();
    }

    @And("August types {string} in the field {string}")
    public void augustTypesIntheField(String text, String xpath) {
        getDriver().findElement(By.xpath("//input[@id='email']")).sendKeys(text);
    }

    @Then("August types in the field {string} password {string}")
    public void augustTypesInTheFieldPassword(String xpath, String text) {
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys(text);
    }

    @And("August needs to click on the button {string}")
    public void augustNeedsToClickOnTheButton(String xpath) {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @Then("August clicks on the {string} button")
    public void augustClicksOnTheButton(String xpath) {
        getDriver().findElement(By.xpath("//div[@class='INd Jea KS5 mQ8 zI7 iyn Hsu'] [1]")).click();
    }


    @And("August should see {string}")
    public void augustShouldSee(String xpath) {
        getDriver().findElement(By.xpath("//div[@class='jzS un8 C9i TB_'] [1]"));
    }


    @Then("August scrolls the element with xpath {string} with offset {int}")
    public void augustScrollsTheElementWithXpathWithOffset(String xpath, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath("//div[@class='newsHubSidebarWrapper']"));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);
    }

}
