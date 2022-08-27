class AnswersController < ApplicationController
  before_action :authenticate_user!
  
  def create
     
    @answer = Answer.create(answer_params)
    
    if @answer.save
      redirect_to question_path(@answer.question)
    else
      @question = @answer.question
      @answers = @question.answers
      render "questions/show"

    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
   if @answer.destroy
     redirect_to question_path(@question)
   end
  end  

  private
  def answer_params
    params.require(:answer).permit(:answer).merge(user_id: current_user.id,  question_id: params[:question_id])
  end
end
