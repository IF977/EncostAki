Feature: Acessar Chamados
  As a User
  I would like to access the requests
  To be able to create a new requests and See all requests
  
Background:
   Given I am on the home page
  
@javascript
Scenario: Visualizar botão de chamados sem estar logado (Sad path)
  Then I should not see the text Chamados

@javascript
Scenario: Visualizar botão de chamados estando logado como admin(Happy path)  
    When I am logged in with email admin@admin.com and password 123456
    Then I should see the text Chamados

@javascript
Scenario: Visualizar todos os chamados estando logado como admin(Happy path)
    When I am logged in with email admin@admin.com and password 123456
    When I put my mouse over request_button
    And I click on the view_requests link
    Then I should see the text Support Requests
    
@javascript
Scenario: Visualizar pagina de criar chamado estando logado como admin(Happy path)
    When I am logged in with email admin@admin.com and password 123456
    When I put my mouse over request_button
    And I click on the Abrir chamado link
    Then I should see the text New Support Request
    
@javascript
Scenario: Visualizar todos os chamados estando logado como usuario comum(Happy path)
    When I am logged in with email teste@teste.com and password 123456
    When I put my mouse over request_button
    And I click on the view_requests link
    Then I should see the text Support Requests
    
@javascript
Scenario: Visualizar pagina de criar chamado estando logado como usuario comum(Happy path)
    When I am logged in with email teste@teste.com and password 123456
    When I put my mouse over request_button
    And I click on the Abrir chamado link
    Then I should see the text New Support Request