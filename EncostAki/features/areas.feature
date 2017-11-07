Feature: Acessar Áreas de Risco
  As a User
  I would like to access the risk areas
  To be able to see all registered risk areas 
  
Scenario: Acessar Áreas sem estar logado (Sad path)
  Given I am on the home page
  When I click on the Áreas de Risco link
  Then I should see the text Login