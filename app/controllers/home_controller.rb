class HomeController < ApplicationController
  def index
  end

  def admin
        if user_signed_in?
  		redirect_to home_admin_path
  	else
  		redirect_to new_user_session_path
  	end

  end
end



