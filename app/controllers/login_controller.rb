class LoginController < ApplicationController

  def index

    if session[:is_login]
      redirect_to '/'
    end

  end


end
