class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = user.user_id
      redirect_to user_path(@current_user)
    else
      render :new
    end
  end
end
