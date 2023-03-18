
## Forgot password E2E (positive)

    @I_can_do_it
    Feature: Learning on how to work with repositories

      @Forgot_password
      Scenario: forgot password
        Given I open url "http://ask-stage.portnov.com/#/login"
        Then I wait for element with xpath "//h3[contains(text(),'Assessment Control')]" to be present
        Then element with xpath " //*[text()='I forgot my password']" should be present
        And I click on element using JavaScript with xpath " //*[text()='I forgot my password']"
        Then element with xpath " //*[text()='Reset Password Request']" should be present
        And I type "vitaly.kamynin@gmail.com" into element with xpath "//*[@id='mat-input-2']"
        Then I click on element using JavaScript with xpath "//*[text()='Request Password Reset']"
        Then I wait for element with xpath "//*[text()='Request Password Reset']" to be present


      @login_Teacher
      Scenario: Login as a Teacher0
        Given I open url "http://ask-stage.portnov.com/#/login"
        Then I wait for element with xpath "//*[@id='mat-input-0']" to be present
        And I type "vitaly.kamynin@gmail.com" into element with xpath "//*[@id='mat-input-0']"
        And I type "Fall2022!" into element with xpath "//*[@id='mat-input-1']"
        And I click on element using JavaScript with xpath "//*[@type='submit']"
        And I wait for 10 sec


      @Create_quiz
      Scenario: Create a quiz
        ## login
        Given I open url "http://ask-stage.portnov.com/#/login"
        Then I wait for element with xpath "//*[@id='mat-input-0']" to be present
        And I type "vitaly.kamynin@gmail.com" into element with xpath "//*[@id='mat-input-0']"
        And I type "Fall2022!" into element with xpath "//*[@id='mat-input-1']"
        And I click on element using JavaScript with xpath "//*[@type='submit']"
        ## new quiz
        And I wait for element with xpath "//h5[contains(text(),'Quizzes')]" to be present
        Then I click on element using JavaScript with xpath "//h5[contains(text(),'Quizzes')]"
        Then I wait for element with xpath "//*[@href='#/quiz-builder']" to be present
        And I click on element using JavaScript with xpath "//*[@href='#/quiz-builder']"
        Then I wait for element with xpath "//*[@placeholder='Title Of The Quiz *']" to be present
        And I type "VK" into element with xpath "//*[@placeholder='Title Of The Quiz *']"
        And I click on element using JavaScript with xpath "//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/div[1]/button[1]"
        And I wait for 2 sec
        And I click on My element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[3]"
        And I wait for 2 sec
        Then I wait for element with xpath "/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[1]/div/mat-slider" to be present
        And I move the slider 1 click left "//*[contains(text(), 'Q1')]/../../..//mat-slider"
        Then I wait for 15 sec

        @OpenUrl
        Scenario: Open url
          Given Open my url "http://ask-stage.portnov.com/#/login"