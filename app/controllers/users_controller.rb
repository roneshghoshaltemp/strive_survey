class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    @user.survey = Survey::CURRENTLY_USED_SURVEY
    
    if @user.save!
      redirect_to @user
    else
      render :new, notice: "An error occurred"
    end
  end
  
  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params[:user].permit(:email)
  end
end