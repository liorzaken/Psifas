class SessionsController < ApplicationController
  layout "login"
  skip_before_filter :session_read
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
    session[:user_name] = ""
    redirect_to root_path
  end
end
