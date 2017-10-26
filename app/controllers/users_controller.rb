class UsersController < ApplicationController
  def new

  end

  def create
    # binding.pry
    if user_params[:password] == user_params[:password_confirmation] #when creating a new user, confirms password and password_confirmation
      @user = User.create(user_params) #creates the user
      session[:user_id] = @user.id #if passwords match, sets the session
      redirect_to user_path(@user)
    else
      redirect_to '/users/new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
