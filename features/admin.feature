@registration
Feature: registration for demoqa
As a user
In order to register for demoqa
I need to be there in demoqa home page

@InvalidSignup
Scenario:
Given I am on Bug Tracker home page
When I click on sign up button
Then I should be able to see signup page
Given I am on Bug Tracker signup page
When I enter invalid datas
And I click on ok button
Then I should able to see error message

@login_invalid
Scenario:new registration with invalid details
	Given I am in Bug tracker dashboard
	When  I click on log in button
	Then  I should see log in popup window
	When  I enter invalid username and password 
	Then  I should see Error Message 