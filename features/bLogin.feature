@Login
Feature: As an end user
I should be able to login to the application 
so that i shoul be able to manage application

@Invalid_Login
Scenario: Trying to login with invalid credentials
Given I am on BugTracker home page
When  I login with Invalid credentials
Then  I should see "Invalid username or password"