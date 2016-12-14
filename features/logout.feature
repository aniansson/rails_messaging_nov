Feature: Logging out
  As a User,
  when I log out,
  I should get a confirmation

  Background:
    Given that I am logged in as "User"

  Scenario: Logging out
    Given I am on the "inbox" page
    When I click the "Logout" button
    Then I should be directed to "index" page
    And I should see "Signed out succesfully."
