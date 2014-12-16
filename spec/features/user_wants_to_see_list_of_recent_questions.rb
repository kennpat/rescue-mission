

require "rails_helper"
feature "User posts a question" do

# As a user
# I want to view recently posted questions
# So that I can help others

# Acceptance Criteria

# - I must see the title of each question
# - I must see questions listed in order, most recently posted first

	it "shows the listing of most recent questions" do
		visit 'questions/index'


	end







end
