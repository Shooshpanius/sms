class Admin::UsersController < ApplicationController

  before_filter :is_login, :is_admin


  def index

    users = User.all

    @form_data = {
        users: users
    }

  end

  def edit

    user = User.find(params[:id])

    @form_data = {
        user: user
    }

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
