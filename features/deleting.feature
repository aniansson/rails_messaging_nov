Feature: As a visitor,
  I would like to delete emails,
  that are receiven

  Background:
    Given there is users named:
      | name      | email            | password |
      | Test Name | email@random.com | password |
      | User1     | user1@random.com | password |

  Scenario: Deleting a message
    Given I am logged in as "Test-User"
    And I send an email to "User1"
    And I am on the "index"
    And I click on "Logout"
    Given that I am logged in as "User1"
    And I am on the "index"
    And I click on the "inbox" page
    Then I should have "1" message
    And I click on the "View" link
    And I click on the "Move to trash" link
    Then I should have "0" messages
