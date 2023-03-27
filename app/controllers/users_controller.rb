class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(
      :email,
      :password, 
      :password_confirmation
    )
    @user = User.new(user_params)

    if @user.save
      redirect_to '/session/new'
    else
      flash.now[:alert] = 'Ви не правильно заповнили форму регістрації'
      render :new
    end
    
  end

  

  def index
    
    @users = User.all
  end
end
