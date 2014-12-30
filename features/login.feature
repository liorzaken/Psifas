Feature: Log in to psifas website

As a worker in psifas
So i can do my work
I want to be able to log in

Background: employees allready have user name and password

When I am on PSIFAS login page

Scenario: user enter valid user name and password

When I enter valid user name
When I enter valid password
And I press "login_button"

Then I should redirect to home page
