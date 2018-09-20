When("I visit the site") do
    visit root_path
end
  
Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Given("the following articles exists") do |table|
     table.hashes.each do |article|
    Article.create!(article)
  end
end  

Given("I visit the {string} page") do |landing|
   visit root_path
  end
  
When("I click {string} link") do |link|
    click_on link
end
  
When("I fill in {string} with {string}") do |field, data|
    fill_in field, with: data
end
  
When("I click {string} button") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Then("I should be on {string} page") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end