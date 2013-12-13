class DistributionFileController < ApplicationController

  protect_from_forgery except: :srv_new_file
  before_filter :is_login


  def index


  end

  def srv_new_file

    #render :nothing => true

    #render text: params

    redirect_to "/distribution_file"

  end


  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end

end
