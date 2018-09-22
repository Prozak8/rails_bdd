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

Then("I should be on {string} page") do |article_title|
    article = Article.find_by(title: article_title)
    expect(current_path).to eq article_path(article)
end

#Given("the following article exists") do |table|
# table is a Cucumber::MultilineArgument::DataTable
#pending # Write code here that turns the phrase above into concrete actions
#end

Then("I should be on {string}") do |string|
pending # Write code here that turns the phrase above into concrete actions
end

Then("I change {string} to {string}") do |string, string2|
pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see {string} page") do |string|
pending # Write code here that turns the phrase above into concrete actions
end
  
  