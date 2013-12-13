class DistributionFileController < ApplicationController

  before_filter :is_login


  def index


  end

  def srv_new_file

    render :nothing => true
  end


  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end

end
