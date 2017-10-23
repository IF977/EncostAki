Given(/^I am on the home page$/) do
    visit(root_path)
end

Given(/^I am on the Sign Up page$/) do
    visit(new_member_registration_path)
end

Given(/^I am on the Sign In page$/) do
    visit(new_member_session_path)
end
