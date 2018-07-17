Feature: I am able to add notes to the app

  @text
  @high_priority
  Scenario: I can add a text note
    Given I am able to open the app
    When I click to add a new text note
    And create some text
    And click save
    Then it should show the note on the homepage

  @checklist
  @high_priority
  Scenario: I can add a checklist note
    Given I am able to open the app
    When I click to add a new checklist note
    And create a checklist
    And click save
    Then it should show the checklist on the homepage

  @calendar
  @high_priority
  Scenario: I am able to navigate to the calendar
    Given I am able to open the app
    When I click the hamburger menu
    And click on calendar
    Then it should show me the calendar page

  @delete
  Scenario: I am able to delete a note
  Given I am able to open the app
  And there is a note on my homepage
  When I click on the note
  And click delete
  Then it should no longer be on the homepage

  @colour
  Scenario: I am able to change the colour of a note
  Given I am able to open the app
  And there is a note on my homepage
  When I click on the note
  And click to change the colour
  Then it should change colour
