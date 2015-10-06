@test
Feature: Different sites 

@test1
Scenario: Google
Given I am on the "google" home page
Then I should see "search" field

@test2
Scenario: Yahoo
Given I am on the "yahoo" home page
#Then I should see "search" field