Feature: As a visitor,
  in order to have a nice mailbox,
  I would like to delete received emails.

  Background:
    Given the following users exist:
      | name      | email            | password |
      | Test-User | email@random.com | password |
      | User1     | user1@random.com | password |

  Scenario: Deleting a message in the inbox
    Given "Test-User" is logged in
    When "Test-User" sends a message to "User1"
    Then I log out
    Given "User1" is logged in
    When I am on the "inbox" page
    Then "User1" should have "1" message
    When I click "View"
    And I click "Move to trash"
    Then "User1" should have "0" messages
