Feature: add new report

As a worker at psifas
So I can add new report
I want to to be able to enter new report

Background: user allready loged in.

Given I am on the main page

When I go to the add report page


And I fill in "report_patientId" with "032262"
And I fill in "report_reporter" with "Moti Monsonego"
And I fill in "report_background" with "ZZZZ"
And I fill in "report_description" with "YYYY"
And I fill in "report_conclusion" with "XXXX"

And I press "save"

Then I should be on the show report page

