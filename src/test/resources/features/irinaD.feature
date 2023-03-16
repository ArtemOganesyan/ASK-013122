@IrinaD
  Feature: Smoke test
    @irinaD1
      Scenario: Registration
      Given IrinaD open "REG_URL"
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

      @irinaD2
        Scenario: Change Name
        Given IrinaD open "LOG_URL"
        Then IrinaD type "twinmaker@packiu.com" in the field "Email"
        Then IrinaD type "12345Abc" in the field "Password"
        And IrinaD waite for 2 sec
        Then IrinaD click on the "Signin"
        And IrinaD waite for 2 sec
        Then IrinaD click on the "Setting"
        Then IrinaD click on the "ChengeYourName"
        Then IrinaD clear element with xpath "NewName"
        Then IrinaD type "Iriska" in the field "NewName"
        Then IrinaD click on the "Change"
        And IrinaD waite for 2 sec


