Feature: As a visitor,
  in order to save deleted emails,
  I would like to untrash emails.

  Background:
    Given the following users exist:
      | name      | email            | password |
      | Test-User | email@random.com | password |
      | User1     | user1@random.com | password |

    Given "Test-User" is logged in
    When "Test-User" sends a message to "User1"

  Scenario: Untrashing sent emails
    Given I am on the "sent" page
    When I click "View"
    And I click "Move to trash"
    When I am on the "trash" page
    And I click "View"
    And I click "Untrash"
    When I am on the "sent" page
    Then I click "View"
    And I should see message

  Scenario: Untrashing received emails
    Given that user logs out
    And "User1" is logged in
    When I am on the "inbox" page
    Then "User1" should have "1" message
    When I click "View"
    And I click "Move to trash"
    Then "User1" should have "0" messages
    When I am on the "trash" page
    And I click "View"
    And I click "Untrash"
    When I am on the "inbox" page
    Then "User1" should have "1" message
