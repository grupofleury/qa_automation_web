@unit
Feature: Unit
    We want to consult a unit

    Scenario: Validate the unit name
        Given im on the "fleury" page
        When i access the units page
        And  i select the unit details
        Then the details of the unit are displayed

  