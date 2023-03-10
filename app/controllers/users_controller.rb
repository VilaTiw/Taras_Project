class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:email, :password)
    User.create(user_params)
    redirect_to '/'
  end
end
