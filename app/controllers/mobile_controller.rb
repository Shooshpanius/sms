class MobileController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def get_unsend

    sms_queue = SmsData.where('user_id = ? and password = ? and id_in_service = ?', params[:login], params[:password], 0)
    @form_data = {
        sms_queue: sms_queue
    }


  end
end
