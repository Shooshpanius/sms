class SmsQueueController < ApplicationController

  before_filter :is_login

  private
  def is_login
    if !session[:is_login]
      redirect_to '/login'
    end
  end

end
