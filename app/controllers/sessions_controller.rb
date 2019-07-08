class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user
      session[:user_id] = @user.id
      redirect_to profile_path(@user)
    else
      flash[:message] = "Incorrect login credentials. Please try again."
      # redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    # redirect_to "/"
  end

end
