@Parallel
Feature: Open Google page test for parallel execution

  Scenario: User opens Google Home Page
    Given I configured WebDriver
    When I open the 'http://google.com' page
    Then I verify header is 'Google'
    And I close browser

  Scenario: User opens Facebook Home Page
    Given I configured WebDriver
    When I open the 'https://facebook.com' page
    Then I verify header is 'Facebook - log in or sign up'
    And I close browser

  Scenario: User opens Asos Home Page
    Given I configured WebDriver
    When I open the 'https://www.asos.com/' page
    Then I verify header is 'ASOS | Online Shopping for the Latest Clothes & Fashion'
    And I close browser

