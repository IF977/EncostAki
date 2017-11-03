Feature: Cadastro de usuários
  As a User
  I would like to create information with my information
  To be able to check the Encostaki application features

Background:
  Given I am on the home page
  
Scenario: Acessar tela de cadastro (Happy path)
    When I click on the Cadastrar link 
    Then I should see Sign up page
  
Scenario: Criar usuario sem email (Sad path)
    Given I am on the Sign Up page
    When I put 123456 on the member_password input
    And I put 123456 on the member_password_confirmation input
    When I click on the Cadastrar button
    Then I should see the text Email can't be blank