Given(/^Amazon\.co\.uk is open$/) do
  home_page.load
end

When(/^I click Sign\-in$/) do
  home_page.go_to_login
end

And(/^enter valid user name and password$/) do
  sign_in_page.log_in
end

Then(/^I am logged in$/) do
  expect(page).to have_content('Hello, Test')
end

Given(/^Amazon\.co\.uk is open and I am logged in$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I search for laptop$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the first result has the word laptop in it$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^I add laptop ASUS ZenBook UX330UA-FB100T to my basket$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I check my basket total$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^it should match the price of the laptop$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
