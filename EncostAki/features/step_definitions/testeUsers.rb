Given(/^I am on the home page$/) do
    visit(root_path)
end

When(/^[I ]*click on the ([^"]*) button$/) do |button|
    click_button(button)
end

And(/^I visit users link$/) do
    visit(root_path/users)
end
