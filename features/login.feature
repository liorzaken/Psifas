Feature: Log in to psifas website

As a worker in psifas
So i can do my work
I want to be able to log in

Background: employees allready have user name and password

Given I am on the PSIFAS login page

Scenario: user enter valid user name and password

When I fill in "UserName" with "admin"
When I fill in "Password" with "Admin1234"
And I press "login"

Then I should be on the main page
