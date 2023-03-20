package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import support.IBElementLib;

import static support.TestContext.getDriver;

public class IBStepDefs {
    @Given("IB open url {string}")
    public void ibOpenUrl(String arg0) {
        getDriver().get(IBElementLib.StagingEnvWeb);
    }


    @And("IB type {string} into {string}")
    public void ibTypeInto(String text, String elementName) {
        getDriver().findElement(By.xpath(IBElementLib.byName(elementName))).sendKeys(text);
    }

    @And("IB wait for {string} sec")
    public void ibWaitForSec(String sec) {
    }

    @Then("IB click on {string}")
    public void ibClickOn(String elementName) {
        getDriver().findElement(By.xpath(IBElementLib.byName(elementName))).click();
    }
<<<<<<< HEAD
=======


    @Then("I delete {string} into element with xpath {string}")
    public void iDeleteIntoElementWithXpath(String text, String elementName) {
        getDriver().findElement(By.xpath((IBElementLib.byName(elementName)))).sendKeys();
    }
>>>>>>> main
}






