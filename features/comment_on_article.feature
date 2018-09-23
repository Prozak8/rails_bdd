Feature: Comment on Articles
    As a visitor
    In order for me to give my opnion on an article
    I would like to be able to leave a comment

    Background: View list of articles on the landing page
        Given the following articles exists
            | title                | content                          |
            | A breaking news item | Some really breaking action      |
            | Learn Rails 5        | Build awesome rails applications |
        And I visit the site
        And I click "Show" link for "A breaking news item"

    Scenario: Commenting on Articles[happy path]
        When I fill in "Body" with "I enjoyed this read!"
        And I fill in "Commenter" with "jake@hotmail.com"
        And I click "Create"
        Then I should see "I enjoyed this read!"
        And I should see "jake@hotmail.com"

    Scenario: Visitor doesn't enter a comment in the comment box [Sad Path]
        When I fill in "Body" with "I enjoyed this read!"
        And I click "Create"
        Then I should see "Email can't be blank"

    #Scenario: Commenting on Articles failed[sad path]
        #When I click "Create"
        #Then I should see "Body can't be blank"
        
