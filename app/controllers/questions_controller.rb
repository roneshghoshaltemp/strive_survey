class QuestionsController < ApplicationController
  before_action :set_question, only: [:show]
  
  def show
    @user = User.find(params[:user_id]) if params[:user_id]
    @answer = Answer.new(question: @question)
  end

  private
  
  def set_question
    @question = Question.find(params[:id])
  end
end
  
