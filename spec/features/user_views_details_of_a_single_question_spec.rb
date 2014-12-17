require "rails_helper"
feature "User posts a question" do

#### View a Question's Details

# ```no-highlight
# As a user
# I want to view a question's details
# So that I can effectively understand the question

# Acceptance Criteria

# - I must be able to get to this page from the questions index
# - I must see the question's title
# - I must see the question's description

	it "views the details of a single question" do
		question1 = Question.create(title:"This is the title of question 111111111111111",
  		description:"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
  		Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa")

		visit question_path(question1.id)

		expect(page).to have_content(question1.title)
		expect(page).to have_content(question1.description)

	end

end
