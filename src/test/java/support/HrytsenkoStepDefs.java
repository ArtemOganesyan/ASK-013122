package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import support.Helper;
import support.hrytsenkoXpath;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;

public class HrytsenkoStepDefs {

    int userId;
    String activationCode;

    @Given("User open url {string}")
    public void userOpenUrl(String arg0) {
        getDriver().get(hrytsenkoXpath.AskUrl);
    }

    @And("User type {string} into {string}")
    public void userTypeInto(String text, String XpathName) {
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).sendKeys(text);
    }

    @And("User click {string}")
    public void userClickSubmitButton(String XpathName) {
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).click();
    }

    @And("I retrieve activation code for email {string}")
    public void iRetrieveActivationCodeForEmail(String email) throws SQLException {
        String result = Helper.getAccessToken(email);
        String[] part = result.split(";");
        userId = Integer.parseInt(part[0]);
        activationCode = part[1];
        System.out.println(result);
    }

    @And("I activate user")
    public void iActivateUser() throws IOException {
        Helper.activateUser(userId, activationCode);
    }

    @And("I move slider {int} step {string} for xpath {string}")
    public void iMoveSliderStepRightForXpath(int numberOfSteps,String direction, String sliderXpath) {
        for (int i = 0; i<numberOfSteps; i++) {
            if (direction.equals("right")) {
                getDriver().findElement(By.xpath(sliderXpath)).sendKeys(Keys.ARROW_RIGHT);
            }
            if (direction.equals("left")) {
                getDriver().findElement(By.xpath(sliderXpath)).sendKeys(Keys.ARROW_LEFT);
            } else {
                System.out.println("Error: Unknown direction for slider");
            }
        }
    }
}
