Feature: Test Suite for Drupal docker marriage

  Scenario: Submit RSVP
    Given I am an anonymous user
    When I visit "/#homepage-rsvp"
    Given for "submitted[names]" I enter "John Doe"
    Given for "submitted[email]" I enter "johndoe@example.com"
    Given for "submitted[can_you_come]" I enter "Yes"
    When I press the "Submit" button
    Given I wait for AJAX to finish
    Then I should see "Thank you!"

  Scenario: Header navigation
    When I visit "/"
    Then I should not see "LODGINGS" in the "menu_active" region
    When I click "Lodgings"
    Given I wait for AJAX to finish
    Then I should see "LODGINGS" in the "menu_active" region
