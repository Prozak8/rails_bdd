Feature: Edit Articles
    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

Background: View list of articles on the landing page
    Given the following article exists
    | title                | content                          |
    | A breaking news item | Some really breaking action      |   
Scenario: Editing Articles
    When I visit the site
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    Then I click "Edit" link
    And I should be on "Edit page"
    And I should see "A breaking news item"
    And I should see "Some really breaking action"
    Then I change "A breaking news item" to "Breaking news"
    Then I click "Save Article" link
    And I should see "landing" page
    And I should see "Breaking news"
    And I should see "Some really breaking action"

  
    