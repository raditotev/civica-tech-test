Given(/^Amazon.co.uk is open$/) do
  home_page.load
end

When(/^I click Sign-in$/) do
  navigate.to_login
end

And(/^enter valid user name and password$/) do
  sign_in_page.log_in
end

Then(/^I am logged in$/) do
  expect(home_page).to have_greeting
end

Given(/^Amazon.co.uk is open and I am logged in$/) do
  home_page.load
  navigate.to_login
  sign_in_page.log_in
end

When(/^I search for (\w+)$/) do |item|
  @item = item.downcase
  home_page.search_for item
  search_results_page.wait_for_search_results
end

Then(/^the first result has the word laptop in it$/) do
  expect(search_results_page.first_product_title).to include @item
end

And(/^I add laptop (.+) to my basket$/) do |product|
  home_page.search_for product
  search_results_page.wait_for_search_results
  search_results_page.select_first_item
  @product_price = view_product_page.get_price
  view_product_page.add_item_to_basket
  basket_page.wait_for_confirm_text
end

When(/^I check my basket total$/) do
  navigate.to_basket
  @subtotal = basket_page.get_subtotal
end

Then(/^it should match the price of the laptop$/) do
  expect(@product_price).to eq @subtotal
end
