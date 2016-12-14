Feature: Logging out
  As a User,
  when I log out,
  I should get a confirmation

  Background:
    Given that there is a user named "Test-User"
    And "Test-User" is logged in

  Scenario: Logging out
    Given I am on the "inbox" page
    When I click "Logout"
    Then I should be on the "index" page
    And I should see "Signed out successfully."
