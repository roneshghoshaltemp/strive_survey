class AnswersController < ApplicationController
  before_action :set_answer, only: [:show]
  
  def show
  end
  
  def create
    @user = User.find(params["answer"]["user_id"])
    @answer = Answer.new(answer_params)
    if @answer.save!
      if params["answer"]["question_id"]
        next_question_id = params["answer"]["question_id"].to_i + 1
        if next_question_id < 6
          redirect_to question_path(Question.find(next_question_id), user_id: @user.id)
        else
          @user.update!(completed_survey: true)
          redirect_to user_path(@user)
        end
      end
    end
  end

  private
  
  def set_answer
    @answer = Answer.find(params[:id])
  end
  
  def answer_params
    params[:answer].permit(:body, :question_id, :user_id, :next_question_id)
  end
end
  
