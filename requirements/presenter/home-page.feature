Feature: Initial page load
    Given: a user logged in
    Scenario: User want to include a new input
        When: the user clicks on the menu button        
        Then: the user should choose a "New input" option 
        And: the user should be able to choose a product
        And: the user should be able to choose a quantity
        And: the user should be able to choose a unit
        And: the user should be able to choose a price
    Scenario: User want to include a new output
        When: the user clicks on the menu button
        Then: the user should choose a "New output" option 
        And: the user should be able to choose a product
        And: the user should be able to choose a quantity 
        And: the user should confirm the product withdrawal
    Scenario: User want to see the list of inputs
        When: the user clicks on the menu button
        Then: the user should choose a "List of inputs" option 
        And: the user should be able to see the list of inputs
    Scenario: User want to see the list of outputs
        When: the user clicks on the menu button
        Then: the user should choose a "List of outputs" option
    Scenario: User want to see the list of products available
        When: the user clicks on the menu button
        Then: the user should choose a "List of products" option
        And: the user should be able to see the list of products
    Scenario: User want to see the shopping list
        When: the user clicks on the menu button
        Then: the user should choose a "Shopping list" option