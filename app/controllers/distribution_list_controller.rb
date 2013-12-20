class DistributionListController < ApplicationController


  before_filter :is_login


  def index


  end


  def srv_file_to_list

    render :nothing => true
  end


  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end


end
