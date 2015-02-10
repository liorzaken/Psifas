class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :session_read
  
  def session_read
    if session[:user_name]===""
      redirect_to root_path
    end
    @current_user = session[:user_name]
    @admin = session[:admin]
    
  end
end
