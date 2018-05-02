@Signup
Feature: As an end user
I should be able to login to the application 
so that i shoul be able to manage application

@Invalid_signup
Scenario: Trying to create an user with Invalid credentials
Given I am on BugTracker Home page
When  I create an user with invalid data
Then  I should see Error message 