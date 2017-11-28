Feature: Acessar Áreas de Risco
  As a User
  I would like to access the risk areas
  To be able to see all registered risk areas 

@javascript  
Scenario: Visualizar Áreas sem estar logado(Sad path)
  Given I am on the home page
  Then I should not see the text Áreas de Risco
  
@javascript  
Scenario: Visualizar Áreas sem estar logado como admin(Sad path)
  Given I am on the home page
  When I am logged in with email teste@teste.com and password 123456
  Then I should not see the text Áreas de Risco

@javascript  
Scenario: Visualizar botão de Áreas estando logado como admin (Happy path)
  Given I am on the home page
  When I am logged in with email admin@admin.com and password 123456
  Then I should see the text Áreas de risco

@javascript 
Scenario: Visualizar todas Áreas estando logado como admin(Happy path)
  Given I am on the home page
  When I am logged in with email admin@admin.com and password 123456
  When I put my mouse over risk_areas_button
  And I click on the view_areas link
  Then I should see the text Areas
  
@javascript 
Scenario: Visualizar pagina de criar área estando logado admin(Happy path)
  Given I am on the home page
  When I am logged in with email admin@admin.com and password 123456
  When I put my mouse over risk_areas_button
  And I click on the create_area link
  Then I should see the text Nova Área
 