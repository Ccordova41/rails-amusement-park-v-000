class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(name: params[:user][:name])
    if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect_to user_path(user)
  else
    redirect_to signin_path
    end

  end

  def sign_out
    session.clear
    redirect_to root_path
  end

end
