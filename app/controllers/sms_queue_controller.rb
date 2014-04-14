class SmsQueueController < ApplicationController

  before_filter :is_login

  def index

    sms_queue = SmsData.where('user_id = ? and id_in_service = ?', session[:user_id], 0)

    @form_data = {
        sms_queue: sms_queue
    }

  end


  private
  def is_login
    if !session[:is_login]
      redirect_to '/login'
    end
  end

end
