@August
  Feature: Pinterest page
    @August1
    Scenario: Open Pinterest page and login
      Given August opens page "Pinterest"
      And August wats for 2 sec
      And August clicks on the button "Login"
      And August types "iriskatest@gmail.com" in the field "Email"
      Then August types in the field "Password" password ".V3/*KZ+gq/44bU"
      And August wats for 2 sec
      And August needs to click on the button "Login"
      And August wats for 5 sec
      Then August clicks on the "Notifications" button
      And August should see "Notification window"
      And August wats for 3 sec
      Then August scrolls the element with xpath "Scroll" with offset 2
      And August wats for 5 sec
