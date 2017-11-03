Then(/^I should see Sign up page$/) do
    visit(new_member_registration_path)
end

Then(/^I should see Sign in page$/) do
    visit(new_member_session_path)
end

Then(/^I should see the Cadastro page again$/) do 
   visit(new_member_registration_path)
end

Then(/^I should see the Login page again$/) do 
    visit(new_member_session_path)
end

Then(/^I should see the text ([^"]*)$/) do |text|
    expect(page).to have_content(text)
end
