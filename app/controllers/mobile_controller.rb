class MobileController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_filter :is_login

  def get_unsend

    sms_queue = SmsData.where('user_id = ? and id_in_service = ?', params[:login], 0)
    @form_data = {
        sms_queue: sms_queue
    }

  end

end




private
def is_login

  user = User.where('login = ? and pwd = ?', params[:login], params[:password])[0]
  render :text => params[:login].to_s+' | '+params[:password].to_s

  if user.nil? or user.pwd != params[:password]

  else

  end

end