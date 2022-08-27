class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :move_to_index, only: [:edit, :update, :destroy]
  before_action :set_question, only: [:show, :edit, :update, :destroy]

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

  def show
    
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to question_path(@question.id)

    else
      render :edit
    end

  end

  def destroy
    if @question.destroy
       redirect_to questions_path
    end
  end

  def genre
    @questions = Question.where(genre_id: params[:id]).order('created_at DESC')

  end


  private

  def question_params
    params.require(:question).permit(:title, :content, :genre_id).merge(user_id: current_user.id)
  end

  def move_to_index
    question = Question.find(params[:id])
    redirect_to root_path unless user_signed_in? && current_user.id == question.user_id
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
