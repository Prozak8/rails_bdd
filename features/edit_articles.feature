Feature: Edit Articles
    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

    Background: View list of articles on the landing page
        Given the following articles exists
            | title                | content                          |
            | A breaking news item | Some really breaking action      |
            | Learn Rails 5        | Build awesome rails applications |

    Scenario: Editing Articles
        When I visit the site
        And I click "Edit" link for "A breaking news item"
        And I fill in "Title" with "Breaking News"
        And I click "Update Article" 
        Then I should be on "Breaking News" page
        And I should see "Article was successfully updated."


#change links to something more relevant
