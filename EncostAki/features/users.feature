Feature: Cadastro de usuários
  As a User
  I would like to create information with my information
  To be able to check the Encostaki application features
  
  Scenario: Tela de cadastro
    Given I am on the home page
    When click on the “cadastrar” button 
    And I visit /users link
    Then I should see Sign up
  