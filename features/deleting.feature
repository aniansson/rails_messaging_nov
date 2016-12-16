Feature: As a visitor,
  I would like to delete emails,
  that are receiven

  Background:
    Given there is users named:
      | name      | email            | password |
      | Test-User | email@random.com | password |
      | User1     | user1@random.com | password |

  Scenario: Deleting a message
    Given "Test-User" is logged in
    And I send an email to "User1"
    And I should be on the "index" page
    And I click "Logout"
    Given "User1" is logged in
    And I am on the "index" page
    And I click "Inbox"
    Then "User1" should have "1" message
    And I click "View"
    And I click "Move to trash"
    Then "User1" should have "0" messages
