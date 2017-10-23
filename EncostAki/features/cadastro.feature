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
    When I fill user password input with 123456
    And I fill user_password_confirmation input with 123456
    And I click on the sign_up button
    Then I should see Email can't be blank
