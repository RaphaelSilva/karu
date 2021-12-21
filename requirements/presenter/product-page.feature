Feature: Register a product and controll the product list
    Given: I am on the product list page
    When: I click on the plus button
    Then: I should see a form to register a new product
    Scenario: Register a product
        Given: I am on the product register page
        Then: I should see the product register form
        When: I fill in the product register form
        Then: I should click on the register button
        Then: I should see the product list page
    Scenario: Register a product with an invalid product name
        Given: I am on the product register page
        Then: I should see the product register form
        When: I fill in the product register form with an invalid product name
        Then: I should see the product register form with an error message
        When: I fill in the product register form with a valid product name
        Then: I should click on the register button
        Then: I should see the product list page
    Scenario: Register a product with an invalid product price
        Given: I am on the product register page
        Then: I should see the product register form
        When: I fill in the product register form with an invalid product price
        Then: I should see the product register form with an error message
        When: I fill in the product register form with a valid product price
        Then: I should click on the register button
        Then: I should see the product list page
    But When: I click on the product listed in the product list
    Then: I should see the product details page
    And: I should see the edit button
    Scenario: Edit a product from details page
        Given: I am on the product page
        Then: I should see the product details page
        When: I click on the edit button
        Then: I should see the product edit form
        When: I fill in the product edit form
        Then: I should click on the edit button
        Then: I should see the product list page