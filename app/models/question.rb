class Question < ActiveRecord::Base
	
	validates :title, :description, presence: true
	validates :title, length: {minimum: 40, too_short: "You must have at least 40 characters in your title"}
	validates :description, length: {minimum: 150, too_short: "You must have at least 150 characters in your question"}


	has_one :userquestion
	has_many :answers

end
