Feature: Acessar Áreas de Risco
  As a User
  I would like to access the risk areas
  To be able to see all registered risk areas 
  
Scenario: Acessar Áreas sem estar logado (Sad path)
  Given I am on the home page
  When I click on the Áreas de Risco link
  Then I should see the text Login
  
Scenario: Acessar Áreas estando logado (Happy path)
  Given I am on the home page
  When I click on the Áreas de Risco link
  And I click on the Sign up link
  When I put user@user.com on the member_email input
  When I put 123456 on the member_password input
  And I put 123456 on the member_password_confirmation input
  When I click on the Cadastrar button
 Then I should see the text Areas