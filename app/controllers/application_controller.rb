class ApplicationController < ActionController::Base
  before_filter :session_read
  def session_read
    @current_user = session[:user_name]
    @admin = session[:admin]
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
end
