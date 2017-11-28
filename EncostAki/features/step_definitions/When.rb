When(/^[I ]*click on the ([^"]*) button$/) do |button|
    click_button(button)
end

When(/^[I ]*click on the ([^"]*) link$/) do |link|
    click_link(link)
end

When(/^[I ]*put ([^"]*) on the ([^"]*) input$/) do |data,input|
    fill_in input, with: data
end

When (/^[I ]* am logged in with email ([^"]*) and password ([^"]*)$/) do |email, senha|
  visit '/members/sign_up'
  fill_in "member_email", :with => email
  fill_in "member_password", :with => senha
  fill_in "member_password_confirmation", :with => senha
  click_button "Cadastrar"
end

When (/^[I ]* put my mouse over ([^"]*)$/) do |over|
    find_by_id(over).hover
end    