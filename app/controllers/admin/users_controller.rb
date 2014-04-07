class Admin::UsersController < ApplicationController

  before_filter :is_login, :is_admin


  def index


  end


  private
  def is_login
    if !session[:is_login]
      redirect_to "/"
    end
  end

  private
  def is_admin
    if !session[:is_admin]
      redirect_to "/"
    end
  end

end
