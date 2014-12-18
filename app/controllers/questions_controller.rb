class QuestionsController < ApplicationController

	def index
		@questions = Question.order(created_at: :desc) 
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

	def show
		# binding.pry
		@answer = Answer.new
		@question = Question.find_by(id:params[:id])
		# @answers = Answer.order(created_at: :desc).where(:question_id == params[:id])
	end

private 

	def user_params
		params.require(:question).permit(:title, :description, :id)
	end



end
