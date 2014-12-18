class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :user

	validates :answer_text, presence: true
	validates :answer_text, length: {minimum: 150, too_short: "Please add more detail to your question"}
end
