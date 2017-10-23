Feature: Send message contact
    As a User
    
    I want to make contact with the development team
    
    In order to give sugestions and/or complaint
	 Background: Entrar em contato
    	Given I am on the home page
    	When I click on the Contact text
    	And I visit contact link
    	Then I should see Deixe seu comentario aqui
    
    Scenario Outline: Send massage Successfully
        Given I am on the contact page
        When I put <nome> on the contato_Nome input
        And I put <email> on the contato_Email input
        And I put <subject> on the contato_Subject input
        And I put <message> on the contato_Message input
        And I click on the Enviar button
        Then I should see the text Your message has been sent 
        
       Examples:
      | Nome | Email | Subject | Message |
      | Abigobaldo | abigobaldo_amigao@auau.com | you guys should improve blabla | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur augue libero, ultrices et pretium et, ultrices vitae eros. Aliquam venenatis velit sem, vel consequat mi. |
      | João | joao_inimiguzao@miaumiau.com | blabla bla bla blablalba | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae ullamcorper dolor. Pellentesque maximus urna vitae orci ultrices lobortis. Morbi aliquet venenatis sagittis. Maecenas ac. |
      
      
    Scenario Outline: Send message without email
        Given I am on the contact page
        When I put <nome> on the contato_Nome input
        And I put <subject> on the contato_Subject input
        And I put <message> on the contato_Message input
        And I click on the Enviar button
        Then I should see the text Email can't be blank
    
        Examples:
      | nome | subject | message |
      | Abigobaldo | you guys should improve blabla | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur augue libero, ultrices et pretium et, ultrices vitae eros. Aliquam venenatis velit sem, vel consequat mi. |
      | João | blabla bla bla blablalba | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae ullamcorper dolor. Pellentesque maximus urna vitae orci ultrices lobortis. Morbi aliquet venenatis sagittis. Maecenas ac. |
        
    Scenario Outline: Send message without subject
        Given I am on the contact page
        When I put <nome> on the contato_Nome input
        And I put <email> on the contato_Email input
        And I put <message> on the contato_Subject input
        And I click on the Enviar button
        Then I should see the text Subject can't be blank
        
        Examples:
      | nome | email | message |
      | Abigobaldo | abigobaldo_amigao@auau.com | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur augue libero, ultrices et pretium et, ultrices vitae eros. Aliquam venenatis velit sem, vel consequat mi. |
      | João | joao_inimiguzao@miaumiau.com | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae ullamcorper dolor. Pellentesque maximus urna vitae orci ultrices lobortis. Morbi aliquet venenatis sagittis. Maecenas ac. |
        
    Scenario Outline: Send message without message
        Given I am on the contact page
        When I put <nome> on the contato_Nome input
        And I put <email> on the contato_Email input
        And I put <subject> on the contato_Subject input
        And I click on the Enviar button
        Then I should see the text Message can't be blank
        
        Examples:
      | nome | email | subject |
      | Abigobaldo | abigobaldo_amigao@auau.com | you guys should improve blabla |
      | João | joao_inimiguzao@miaumiau.com | blabla bla bla blablalba |