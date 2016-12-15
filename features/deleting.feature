Background:
  Given following users exists
    | name      | email            | password |
    | Test Name | email@random.com | password |
    | User1     | user1@random.com | password |

  Scenario: Deleting a message
    Given I am logged in as "Test-User"
    And I send an email to "User1"
    And I am on the "home page"
    And I click on the "logout" button
    Given that I am logged in as "User1"
    And I am on the "home page"
    And I click on the "Inbox" page
    Then I should have "1" message
    And I click on the "View" link
    And I click on the "Move to trash" link
    Then I should have "0" messages    
