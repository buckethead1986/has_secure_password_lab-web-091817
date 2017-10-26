class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:user][:name]) #finds the user

    if user.try(:authenticate, params[:user][:password]) # authenticating a known user, authenticates password against user
      session[:user_id] = user.id #if so, sets session
    else
      redirect_to '/'
    end
  end

  private

  def session_params
    params.require(:user).permit(:name, :password)

  end

end
