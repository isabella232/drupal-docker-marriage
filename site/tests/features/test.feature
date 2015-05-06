Feature: Example feature
  This suite only contains a dummy test, for now.

  Scenario: Show the frontpage
    Given I am an anonymous user
    When I visit "/"
    Then I should see the text "Welcome"
