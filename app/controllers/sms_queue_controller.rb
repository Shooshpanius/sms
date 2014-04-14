class SmsQueueController < ApplicationController

  before_filter :is_login

  def index

    sms_queue = SmsData.where('user_id = ? and id_in_service = ?', session[:user_id], 0)

    @form_data = {
        my_lists: my_lists
    }

  end


  private
  def is_login
    if !session[:is_login]
      redirect_to '/login'
    end
  end

end
