
@Ask_test
Feature: Smoke tests

  Background:
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"

  @Ask_scenario_1
  Scenario: Sign in - Teacher - Create new quiz
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    And I type "bdolart@greendike.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 3 sec
    And I click on element with xpath "//span[contains(text(), 'Create New Quiz')]"
    And I wait for 3 sec
    And I type "Geography" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]"
    And I wait for 3 sec
    And I move slider 1 step "left" for xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-slider"
    And I wait for 3 sec
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[2]"
    And I type "What is the capital city of Spain?" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']"
    And I type "Madrid" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 1*']"
    And I type "Lisbon" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 2*']"
    And I click on element with xpath "//span[contains(text(),'Add Option')]"
    And I type "Rome" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 3*']"
    And I click on element with xpath "//span[contains(text(),'Add Option')]"
    And I type "Paris" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Option 4*']"
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//div[@class='mat-radio-inner-circle'])[4]"
    And I wait for 3 sec
    And I take screenshot
    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]"
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[3]"
    And I type "Which of the following is NOT a country in Southeast Asia?" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='question']"
    And I type "Vietnam" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 1*']"
    And I type "Laos" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 2*']"
    And I click on element with xpath "(//span[contains(text(),'Add Option')])[2]"
    And I type "Myanmar" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 3*']"
    And I click on element with xpath "(//span[contains(text(),'Add Option')])[2]"
    And I type "Nepal" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 4*']"
    And I click on element with xpath "(//span[contains(text(),'Add Option')])[2]"
    And I type "Thailand" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 5*']"
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//input[@type='checkbox']/..)[1]"
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//input[@type='checkbox']/..)[2]"
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//input[@type='checkbox']/..)[3]"
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//input[@type='checkbox']/..)[5]"
    And I wait for 3 sec
    And I take screenshot
    And I click on element with xpath "//span[contains(text(), 'Save')]"
    And I wait for 3 sec

  @Ask_scenario_2
  Scenario: Registration - Empty fields - Error messages
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    And I click on element with xpath "//span[contains(text(),'Register Now')]"
    And I wait for 3 sec
    When I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I wait for 3 sec
    And I take screenshot
    Then element with xpath "(//mat-error[@role='alert']/../..)[1]" should be present
    Then element with xpath "(//mat-error[@role='alert']/../..)[2]" should be present
    Then element with xpath "(//mat-error[@role='alert']/../..)[3]" should be present
    Then element with xpath "(//mat-error[@role='alert']/../..)[4]" should be present
    Then element with xpath "(//mat-error[@role='alert']/../..)[5]" should be present
    Then element with xpath "(//mat-error[@role='alert']/../..)[6]" should be present
    And I wait for 3 sec

  @Ask_scenario_3
  Scenario: Sign in - Java - Create my step definition
    Given User open url "ASK"
    And User type "bdolart@greendike.com" into "EmailField"
    And User type "12345Abc" into "PasswordField"
    And User click "SubmitButton"
    And I wait for 3 sec
    And I take screenshot

  @Ask_scenario_4
  Scenario: Registration - New user - Definition - Helper
    Given I open url "http://ask-stage.portnov.com/#/registration"
    And I type "John" into element with xpath "//input[@formcontrolname='firstName']"
    And I type "Johnson" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "example123@email.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "NFX007" into element with xpath "//input[@formcontrolname='group']"
    And I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And I type "12345Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I retrieve activation code for email "example123@email.com"
    And I activate user

  @Ask_scenario_5
  Scenario: Create new assignment - New user
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    And I type "bdolart@greendike.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I wait for 3 sec
    And I click on element with xpath "//span[contains(text(),'Go To Assignments')]"
    And I wait for 3 sec
    And I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    And I wait for 3 sec
    And I click on element with xpath "(//mat-select[@role='listbox']/../../../..)[1]"
    And I wait for 3 sec
    And I scroll to the element with xpath "//mat-option[@role='option']/../..//span[contains(text(), 'NFX007')]/.." with offset 5
    And I take screenshot
    And I click on element with xpath "//mat-option[@role='option']/../..//span[contains(text(), 'NFX007')]/.."
    And I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I wait for 3 sec
    And I scroll to the element with xpath "(//span[contains(text(),'Geography')]/..)[1]" with offset 5
    And I take screenshot
    And I click on element with xpath "(//span[contains(text(),'Geography')]/..)[1]"
    And I wait for 3 sec
    And I click on element with xpath "//mat-list-option[@role='option']/.."
    And I wait for 3 sec
    And I take screenshot
    And I click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And I wait for 3 sec

  @Ask_scenario_6
  Scenario: Sign in - Student - Submit
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    And I type "example123@email.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for element with xpath "//p[contains(text(), 'STUDENT')]" to be present
    Then element with xpath "//p[contains(text(), 'STUDENT')]" should be present
    And I click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
    And I wait for 3 sec
    And I click on element with xpath "(//span[contains(text(), 'Go To Assessment')]/..)[1]"
    And I wait for 3 sec
    And I click on element with xpath "(//h5[contains(text(), 'Question 1 / 2')]/..//input[@type='radio']/..)[1]"
    And I wait for 3 sec
    And I take screenshot
    And I click on element with xpath "(//h5[contains(text(), 'Question 2 / 2')]/..//input[@type='checkbox']/../..)[1]"
    And I click on element with xpath "(//h5[contains(text(), 'Question 2 / 2')]/..//input[@type='checkbox']/../..)[2]"
    And I click on element with xpath "(//h5[contains(text(), 'Question 2 / 2')]/..//input[@type='checkbox']/../..)[3]"
    And I click on element with xpath "(//h5[contains(text(), 'Question 2 / 2')]/..//input[@type='checkbox']/../..)[5]"
    And I wait for 3 sec
    And I take screenshot
    And I click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And I wait for 3 sec
    Then I wait for element with xpath "//h1[contains(text(), 'Success!')]" to be present
    Then element with xpath "//h1[contains(text(), 'Success!')]" should be displayed
    And I take screenshot
    And I click on element with xpath "//span[contains(text(),'Ok')]"
    And I wait for 3 sec

  @Ask_scenario_7
  Scenario: Submission - Auto-Grade
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    And I type "bdolart@greendike.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I wait for 3 sec
    And I click on element with xpath "//span[contains(text(),'Go To Submissions')]"
    And I click on element with xpath "//div[contains(text(), 'Automatically Graded')]"
    And I wait for 3 sec
    And I scroll to the element with xpath "(//td[contains(text(), 'NFX007')]/..)[1]" with offset 5
    And I wait for 3 sec
    And I take screenshot
    And I click on element with xpath "(//td[contains(text(), 'NFX007')]/..//span[contains(text(), 'Review')]/..)[1]"
    Then I wait for element with xpath "//div[contains(text(),'ASSESSMENT PASSED')]" to be present
    Then element with xpath "//div[contains(text(),'ASSESSMENT PASSED')]" should be present
    And I take screenshot
    And I wait for 3 sec
    And I type "Congratulation!" into element with xpath "//textarea[@formcontrolname='summary']"
    And I take screenshot
    And I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 3 sec
