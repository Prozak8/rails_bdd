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

    Scenario: Commenting on Articles
        When I fill in "Text" with "I enjoyed this read!"
        And I fill in "Email" with "jake@hotmail.com"
        And I click "Create"
        Then I should see "I enjoyed this read!"
        And I should see "jake@hotmail.com"
