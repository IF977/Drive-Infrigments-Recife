Feature: Go to the page information
    
    As a User
    
    I want to acess one page with useful informations
    
    In order to get information
    
    Scenario: Successfully vising information page
      Given I am on the home page
      When I click on INFORMATION link
      Then I should see the page information
      
      