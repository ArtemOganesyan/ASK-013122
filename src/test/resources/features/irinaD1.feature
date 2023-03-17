@askscenario-irinaD1
  Feature: IrinaD1-New Assignment
    Scenario:New assignment
      Given Kira open page of Teachers`s account "LOG_URL"
      Then Kira is typing "bymike19@hieu.in" into "EmailField"
      Then Kira is typing "12345Abc" into "PasswordField"
      And Kira waits for 5 sec
      Then Kira click on element with xpath "SubmitButton"
      And Kira waits for 1 sec
      Then Kira click on element with xpath "Assignments"
      And Kira waits for 2 sec
      Then Kira click on element with xpath "Create New Assignment"
      And Kira waits for 2 sec
      Then Kira click on element with xpath "Select Quiz To Assign"
      And Kira waits for 2 sec
      And Kira click on element with xpath "SQA Basic-1"
      And Kira scroll to the element with xpath "LauraB" with offset 2
      And Kira waits for 2 sec
      And Kira click on element with xpath "LauraB"
      And Kira waits for 2 sec
      And Kira click on element with xpath "Give Assignment"
      And Kira waits for 2 sec