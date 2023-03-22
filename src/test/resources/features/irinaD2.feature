@pinterest
  Feature: Pinterest
    @pinterest1
    Scenario: Responsive design
      Given Iris opens page "PIN_URL"
      Then Iris should see page title as "Pinterest"
      Then Iris resize window to 600 and 1000
      Then Iris waits for 2 sec
      And Iris takes screenshot

    @pinterest2
    Scenario: New window on Pinterest
      Given Iris opens page "PIN_URL"
      Then Iris should see page title as "Pinterest"
      Then Iris clicks on element with xpath "Blog"
      And Iris waits for 2 sec

    @pinterest3
    Scenario: Login on Pinterest
      Given Iris opens page "PIN_URL"
      Then Iris should see page title as "Pinterest"
      Then Iris clicks on element with xpath "Login"
      Then Iris waits for 1 sec
      Then Iris type "iriskatest@gmail.com" into element with xpath "Email"
      Then Iris type "12345Abc" into element with xpath "Password"
      Then Iris clicks on element with xpath "Log in"
      And Iris waits for 2 sec
      Then Iris should see an element with xpath "Home" should be displayed
      Then Iris type "food" into element with xpath "Search"
      And Iris waits for 2 sec
      And Iris scroll to the element with xpath "food recipes" with offset 2
      And Iris clicks on element with xpath "food recipes"
      And Iris waits for 2 sec
      Then Iris clicks on element with xpath "Chinese"
      And Iris waits for 2 sec
      Then Iris should see an element with xpath "Search" should have text as "chinese food recipes"
      And Iris waits for 1 sec
      And Iris switch to new window
      Then Iris clicks on element with xpath "orange chicken"
      And Iris waits for 1 sec
      Then Iris clicks on element with xpath "Save"
      And Iris waits for 2 sec
