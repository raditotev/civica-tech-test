Feature: Shop online at Amazon.co.uk
	As amazon registered user
	I want to be able to purchase goods online
	So I can save money and time
@radi
	Scenario: Sign into Amazon.co.uk
	Given Amazon.co.uk is open
	When I click Sign-in
	And enter valid user name and password
	Then I am logged in


	Scenario: Search for product and verify the first result is related to your product
	Given Amazon.co.uk is open and I am logged in
	When I search for laptop
	Then the first result has the word laptop in it


	Scenario: Verify that the original price of the product matches the price seen in the basket
	Given Amazon.co.uk is open and I am logged in
	And I add laptop ASUS ZenBook UX330UA-FB100T to my basket
	When I check my basket total
	Then it should match the price of the laptop
