class SessionsController < ApplicationController
  def login
    @user
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Hello, " + @user.name.capitalize
    else
      redirect_to sessions_login_path, notice: "Try again"
    end
  end

  def loguot
    reset_session
    redirect_to root_path
  end
end
