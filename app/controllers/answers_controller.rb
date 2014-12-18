class AnswersController < ApplicationController
	
	def new
		@answer = Answer.new
	end

	def create
		@question = Question.find_by(:id == answer_params[:question_id])
    
    @answer = Answer.new(answer_params)
    # binding.pry
    @answer.save
    render 'questions/show'
	end

	def edit

	end

	private
	def answer_params
  	params.require(:answer).permit(:answer_text,:question_id)
	end

end
