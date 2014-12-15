class QuestionsController < ApplicationController
	def index
		@questions = Question.order(created_at: :desc).all? 
	end

	def new
		# binding.pry
		@question = Question.new
	end

	def create
		@question = Question.new(user_params)
		if @question.save
			# binding.pry
			redirect_to "/questions"
		else 
			render 'new'
		end
	end

private 

	def user_params
		params.permit(:title, :description)
	end



end
