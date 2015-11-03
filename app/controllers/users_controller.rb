class UsersController < ApplicationController
  def new
    @user = User.new
  end

    def create
      @user = User.new(params.require(:user).permit(:name, :email, :password))
      if @user.save
        # session[:user_id] = @user.id
        redirect_to sessions_login_path, notice: "Thank you for signing up! You can sign in"
      else
        redirect_to :back, notice: "Try again"
      end
    end
end
