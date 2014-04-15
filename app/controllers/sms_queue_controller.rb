class SmsQueueController < ApplicationController

  before_filter :is_login

  def index
    sms_queue = SmsData.where('user_id = ? and id_in_service = ?', session[:user_id], 0)
    @form_data = {
        sms_queue: sms_queue
    }
  end

  def srv_delete_sms_queue

    SmsData.destroy_all(
        :user_id => session[:user_id],
        :id_in_service => 0
    )
    render :nothing => true
  end


  private
  def is_login
    if !session[:is_login]
      redirect_to '/login'
    end
  end

end
