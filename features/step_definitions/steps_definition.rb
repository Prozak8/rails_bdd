When("I visit the site") do
    visit root_path
end
  
Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Given("the following articles exists") do |table|
    table.hashes.each do |article|
    Article.create!(article)  #Use factory
  end
end  

Given("I visit the {string} page") do |landing|
    visit root_path
end
   
When("I click {string}( link)") do |link|
    click_on link
end
  
When("I fill in {string} with {string}") do |field, data|
    fill_in field, with: data
end

Then("I should be on {string} page") do |article_title|
    article = Article.find_by(title: article_title)
    expect(current_path).to eq article_path(article)
end

When("I click {string} link for {string}") do |element_text, article_title|
    article = Article.find_by(title: article_title)
    within "#article_#{article.id}" do 
        click_on element_text 
    end
end

Given("the following comment exist for {string}") do |article_title, table|
    article = Article.find_by(title: article_title)
    table.hashes.each do |comment_hash|
        article.comments.create(comment_hash)
    end
end

  