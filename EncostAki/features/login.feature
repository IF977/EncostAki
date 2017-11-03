Feature: Login de usuários
  As a User
  I'd like to access my application account
  To be able to check the Encostaki application features
  
  Scenario: Acessar tela de login (Happy path)
    Given I am on the home page
    When I click on the Login link 
    Then I should see Sign in page
    
  Scenario: Criar usuario sem email ou senha (Sad path)
    Given I am on the Sign In page
    When I click on the Login button
    Then I should see the Login page again
    