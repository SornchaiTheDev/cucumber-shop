Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Milk" with price 96.00 and stock of 4 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00

Scenario: Buy three products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 3
    And I buy "Milk" with quantity 2
    Then total should be 473.00

Scenario: Buy product more than stock quantity
    When I buy "Bread" with quantity 10
    Then I can't buy out of stock product