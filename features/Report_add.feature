Feature: add new report

As a worker at psifas
So I can add new report
I want to to be able to enter new report

Background: user allready loged in.

Given I am on the main page
Scenario: Add Report
When I go to the add report page


And I fill in "Background" with "Naim Is From Iraq"
And I fill in "Description" with "Naim Drink Tea"
And I fill in "Conclusion" with "Naim Is Crazy"

And I press "Save"

Then I should be on the show report page
    And I should see "Report was successfully created."
    And I should see "Background: Naim Is From Iraq"
    And I should see "Description: Naim Drink Tea"
    And I should see "Conclusion: Naim Is Crazy"
    
    
Scenario: Validation Check

When I go to the add report page
And I fill in "Background" with "Aa"
And I press "Save"


    And I should see "2 errors prohibited this report from being saved:"



    

    

