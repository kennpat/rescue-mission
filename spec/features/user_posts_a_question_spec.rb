require "rails_helper"
feature "User posts a question" do


# As a user
# I want to post a question
# So that I can receive help from others

# Acceptance Criteria

# - I must provide a title that is at least 40 characters long
# - I must provide a description that is at least 150 characters long
# - I must be presented with errors if I fill out the form incorrectly

	it "posts a question" do
		visit '/questions/new'
		fill_in "question_title", with: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
		Aenean commodo ligula eget dolor. Aenean massa."
		fill_in "question_description", with: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
		Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis par"
		click_on "Post"
	end

	it "has a title less than 40 characters" do
		visit "/questions/new"
		click_on "Post"
		expect(page).to have_content "You must have at least 40 characters in your title"
	end

	it "description has less than 150 characters" do
		visit "/questions/new"
		click_on "Post"
		expect(page).to have_content "You must have at least 150 characters in your question"
	end

end