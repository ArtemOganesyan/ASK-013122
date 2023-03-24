/*
 * Created by Artem Oganesyan on 20.03.2023
 */

package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class ArtemStepDef {
    @And("I add {int} options {string}")
    public void iAddOptions(int numberOfOptions, String checkedValue) throws InterruptedException {
        for (int i = 0; i < numberOfOptions; i++) {
//            if (i >= 2) {
//                getDriver().findElement(By.xpath("//span[contains(text(),'Add Option')]")).click();
//                Thread.sleep(1000);
//            }
            getDriver().findElement(By.xpath("//span[contains(text(),'Add Option')]")).click();
            Thread.sleep(1000);
            getDriver()
                    .findElement(By.xpath("(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])["+(i + 1)+"]"))
                    .sendKeys("Option " + (i + 1));
            if (checkedValue.equals("checked")) {
                getDriver()
                        .findElement(By.xpath("(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])["+(i + 1)+"]"))
                        .click();
            }
        }
    }
}
