Feature: Send message contact
    As a User
    
    I want to make contact with the development team
    
    In order to give sugestions and/or complaint
    
    Scenario: Successfully vising contact page
      Given I am on the home page
      When I click on CONTATC link
      Then I should see the page contact
    
    Scenario Outline: Send massage Successfully
        Given I am on the contact page
        When I put <nome> on the user_nome input
        And I put <email> on the user_email input
        And I put <subject> on the subject input
        And I put <message> on the message input
        And I click on the Submit button
        Then I should see the text Your message has been sent 
        
       Examples:
      | nome | email | subject | message |
      | Abigobaldo | abigobaldo_amigao@auau.com | you guys should improve blabla | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur augue libero, ultrices et pretium et, ultrices vitae eros. Aliquam venenatis velit sem, vel consequat mi. |
      | João | joao_inimiguzao@miaumiau.com | blabla bla bla blablalba | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae ullamcorper dolor. Pellentesque maximus urna vitae orci ultrices lobortis. Morbi aliquet venenatis sagittis. Maecenas ac. |
      
      
    Scenario Outline: Send message without email
        Given I am on the contact page
        When I put <nome> on the user_nome input
        And I put <subject> on the subject input
        And I put <message> on the message input
        And I click on the Submit button
        Then I should see the text Email can't be blank
    
        Examples:
      | nome | subject | message |
      | Abigobaldo | you guys should improve blabla | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur augue libero, ultrices et pretium et, ultrices vitae eros. Aliquam venenatis velit sem, vel consequat mi. |
      | João | blabla bla bla blablalba | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae ullamcorper dolor. Pellentesque maximus urna vitae orci ultrices lobortis. Morbi aliquet venenatis sagittis. Maecenas ac. |
        
    Scenario Outline: Send message without subject
        Given I am on the contact page
        When I put <nome> on the user_nome input
        And I put <email> on the user_email input
        And I put <message> on the message input
        And I click on the Submit button
        Then I should see the text Subject can't be blank
        
        Examples:
      | nome | email | message |
      | Abigobaldo | abigobaldo_amigao@auau.com | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur augue libero, ultrices et pretium et, ultrices vitae eros. Aliquam venenatis velit sem, vel consequat mi. |
      | João | joao_inimiguzao@miaumiau.com | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae ullamcorper dolor. Pellentesque maximus urna vitae orci ultrices lobortis. Morbi aliquet venenatis sagittis. Maecenas ac. |
        
    Scenario Outline: Send message without message
        Given I am on the contact page
        When I put <nome> on the user_nome input
        And I put <email> on the user_email input
        And I put <subject> on the subject input
        And I click on the Submit button
        Then I should see the text Message can't be blank
        
        Examples:
      | nome | email | subject |
      | Abigobaldo | abigobaldo_amigao@auau.com | you guys should improve blabla |
      | João | joao_inimiguzao@miaumiau.com | blabla bla bla blablalba |