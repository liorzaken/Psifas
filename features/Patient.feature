Feature: add new patient

As a worker at psifas
So I can add new patient
I want to to be able to enter details of ne patient to the system

Background: user allready loged in.

Given I am on the main page

When I go to the add patient page

And I fill in "patient_patientId" with "036892628"
And I fill in "patient_birthDate" with "19/03/1985"
And I fill in "patient_fullName" with "Moti Monsonego"
And I fill in "patient_address" with "Jerusalem"

And I press "save"

Then I should be on the show patient page


