@predefind
Feature: Smoke test
  @irinaD1
  Scenario: Registration
    Given IrinaD open "url"
    And IrinaD waite for 2 sec
    Then IrinaD type "Iriska" in the field "FirstName"
    Then IrinaD type "Iriska" in the field "LastName"
    Then IrinaD type "iriskatest@gmail.com" in the field "Email"
    Then IrinaD type "ASK131" in the field "GroupCode" 
    Then IrinaD type "12345Abc" in the field "Password"
    Then IrinaD type "12345Abc" in the field "ConfirmPassword"
    And IrinaD waite for 2 sec
    Then IrinaD click on the "RegisterMe"
    Then IrinaD waite for 2 sec

