class SessionsController < ApplicationController
  def create
    p params
    @user = User.find_by_username(params[:user][:username])
    if @user 
      session[:user] = @user.username
    else 
      flash[:errors] = ["User does not exist."]
    end

    redirect_to root_url
  end

  def destroy
    session[:user] = nil
    redirect_to root_url
  end

end
