Feature: Cadastro de usuários
  As a User
  I would like to create information with my information
  To be able to check the Encostaki application features
  
  Scenario: Acessar tela de cadastro (Happy path)
    Given I am on the home page
    When I click on the Cadastrar button 
    Then I should see Sign up page
  
  Scenario: Criar usuario sem email ou senha (Sad path)
    Given I am on the Sign Up page
    When I press on the Cadastrar button
    Then I should see the Cadastro page again