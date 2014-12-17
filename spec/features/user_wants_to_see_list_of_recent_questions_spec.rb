

require "rails_helper"
feature "User posts a question" do

# As a user
# I want to view recently posted questions
# So that I can help others

# Acceptance Criteria

# - I must see the title of each question
# - I must see questions listed in order, most recently posted first

	it "shows the listing of most recent questions" do
		question1 = Question.create(title:"This is the title of question 111111111111111",
  		description:"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
  		Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa")
  	question2 = Question.create(title:"This is the title of question 2222222222222222",
  		description:"Lorem ipsum dolor sit amet, consectetuer adipiscing elit2.
  		Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa2")

		visit questions_path
		
		expect(page).to have_content "This is the title of question 222222222222222"
		expect(page).to have_content "This is the title of question 111111111111111"
		expect(question2.title).to appear_before(question1.title)
	end

 end
