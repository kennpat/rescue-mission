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
		visit '/questions'
	end



end