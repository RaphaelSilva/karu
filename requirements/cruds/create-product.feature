# CRUD product
Feature: Create a new product
    Given I am logged in as an admin
    When I create a new product
    Then I should see the product
    And I should see the product in the list

Feature: Edit a product
    Given I am logged in as an admin
    When I edit a product
    Then I should see the product
    And I should see the product in the list

Feature: Delete a product
    Given I am logged in as an admin
    When I change a product status to inactive
    Then I should see the product in the list