Feature: Cadastro de usuários
  As a User
  I want to be able to register
  To be able to check the risk areas of my region
  
  Scenario: Tela de cadastro
    Given I am on the registration screen
    When click on the “registrar” button 
    Then I should see the risk areas of my region on a map
  