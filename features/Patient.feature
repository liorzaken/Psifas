Feature: add new patient

As a worker at psifas
So I can add new patient
I want to to be able to enter details of ne patient to the system

Background: user allready loged in.

Given I am on the main page
Scenario: Add Patient

When I go to the add patient page

And I fill in "patient_patientId" with "036892628"
And I fill in "patient_fullName" with "Moti Monsonego"
And I fill in "patient_address" with "Jerusalem"

And I press "Save"

Then I should be on the show patient page
    And I should see "Patientid: 036892628"
    And I should see "Fullname: Moti Monsonego"
    And I should see "Address: Jerusalem"


Scenario: Validation Check

When I go to the add patient page
And I fill in "patient_patientId" with "03"
And I press "Save"


    And I should see "4 errors prohibited this patient from being saved:"
    And I should see "Patientid is too short (minimum is 9 characters)"
    And I should see "Fullname can't be blank"
    And I should see "Fullname only allows letters"


    


