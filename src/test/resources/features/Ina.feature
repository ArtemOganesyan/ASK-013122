@asktest
Feature:  ASK tests


  # Registration-"New User-First Name- new feature added"
@askscenario
 Scenario: ASK scenario
 Given IB open url "http://ask-stage.portnov.com/#/registration"
  And IB type "Ina" into "FirstName"
  And IB wait for "3" sec
  And IB type "Belab" into "LastNameField"
  And IB wait for "3" sec
  And IB type "belobokqa_1@gmail.com" into "EmailField"
  And IB wait for "3" sec
  And IB type "ASK131" into "GroupCodeField"
  And IB wait for "3" sec
  And IB type "12345#" into "PasswordField"
  And IB wait for "3" sec
  And IB type "12345#" into "ConfirmPasswordField"
  And IB wait for "3" sec
  Then IB click on "RegisterMeButton"
  And IB wait for "3" sec
 Then I wait for 5 sec

 # I wish everyone- Have a good day!!!:)))





   
   
    











