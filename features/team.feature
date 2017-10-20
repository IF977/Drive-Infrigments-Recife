Feature: Go to the page team
    Scenario: Successfully vising team page
      Given I am on the index page
      When I click on team link
      Then I should see the page team
      