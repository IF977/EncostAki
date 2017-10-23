When(/^[I ]*click on the ([^"]*) button$/) do |link|
    click_link(link)
end

When(/^[I ]*press on the ([^"]*) button$/) do |button|
    click_button(button)
end