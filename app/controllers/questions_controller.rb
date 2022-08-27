class QuestionsController < ApplicationController
  def index
    @questions = Question.includes(:user).order('created_at DESC')
  end

  def new
    @question =  Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end


  private

  def question_params
    params.require(:question).permit(:title, :content, :genre_id).merge(user_id: current_user.id)
  end
end
