#### Answering a Question

# As a user
# I want to answer another user's question
# So that I can help them solve their problem

# Acceptance Criteria

# - I must be on the question detail page
# - I must provide a description that is at least 50 characters long
# - I must be presented with errors if I fill out the form incorrectly

require "rails_helper"
feature "user wishes to answer another users question" do

	it "posts an answer" do
		question1 = Question.create(title:"This is the title of question 111111111111111",
  		description:"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
  		Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa")

		visit question_path(question1.id)

		fill_in "answer_answer_text", with: "I need a decent answer here, nothing that is too over the top mind you. 
		Just something with enough of a put down to make me feel slightly dumb"
		click_on "Post Answer"

	end
	
end