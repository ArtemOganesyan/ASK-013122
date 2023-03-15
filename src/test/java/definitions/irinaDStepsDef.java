package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import support.XpathirinaDLib;


import static support.TestContext.getDriver;

public class irinaDStepsDef {
    @Given("IrinaD open {string}")
    public void irinadOpen(String url) {
        getDriver().get(XpathirinaDLib.url);
    }


    @And("IrinaD waite for {int} sec")
    public void irinadWaiteForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);

    }

    @Then("IrinaD type {string} in the field {string}")
    public void irinadTypeInTheField(String text, String xpathname) {
        getDriver().findElement(By.xpath(XpathirinaDLib.ElementForIrinaD(xpathname))).sendKeys(text);
    }

    @Then("IrinaD click on the {string}")
    public void irinadClickOnThe(String xpath) {
        getDriver().findElement(By.xpath(XpathirinaDLib.ElementForIrinaD(xpath))).click();
    }
}

