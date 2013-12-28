class TemplateVoiceController < ApplicationController

  before_filter :is_login


  def index

    render :nothing => true

  end


  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end

end
