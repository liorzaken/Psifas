class LoginController < ApplicationController
  layout "login"
  def index
    
  end
  def login
    redirect_to main_page_index_path
  end
  
 
end
