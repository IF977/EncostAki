Given(/^I am on the home page$/) do
    visit(root_path)
end

When(/^I click on the Cadastrar button$/) do
    click_button(Cadastrar)
end

Then(/^I should see Sign up$/) do
end
