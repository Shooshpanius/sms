class MobileController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_filter :is_login

  def get_unsend

    sms_queue = SmsData.where('user_id = ? and id_in_service = ?', @user.id, 0)
    sms_queue = '{"sys":'+sms_queue.to_json+'}'
    @form_data = {
        sms_queue: sms_queue
    }

    render json: sms_queue

  end

end




private
def is_login

  @user = User.where('login = ? and pwd = ?', params[:login], params[:pwd])[0]


  if @user.nil? or @user.pwd != params[:pwd]
    render :text => params[:login].to_s+' | '+params[:pwd].to_s+' | '+@user.pwd.to_s
  else

  end

end