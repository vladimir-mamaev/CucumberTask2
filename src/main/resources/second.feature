@Parallel
Feature: Open Epam page test for parallel execution

  Scenario: User opens Epam Home Page
    Given I configured WebDriver
    When I open the 'http://www.epam.com' page
    Then I verify header is 'EPAM | Enterprise Software Development, Design & Consulting'
    And I close browser

  Scenario: User opens Rozetka Home Page
    Given I configured WebDriver
    When I open the 'https://rozetka.com.ua/' page
    Then I verify header is 'Інтернет-магазин ROZETKA™: офіційний сайт найпопулярнішого онлайн-гіпермаркету в Україні'
    And I close browser

  Scenario: User opens Amazon Home Page
    Given I configured WebDriver
    When I open the 'https://www.amazon.com/' page
    Then I verify header is 'Amazon.com. Spend less. Smile more.'
    And I close browser

