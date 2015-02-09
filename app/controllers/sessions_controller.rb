class SessionsController < ApplicationController
  layout "login"
  def new
  end
  

  def create
    user = User.find_by_userName(params[:userName])
    if user && user.authenticate(params[:password])
      session[:user_name] = user.userName
      session[:admin] = user.admin
      redirect_to main_page_index_path
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_name] = nil
    redirect_to new_session_path
  end
end