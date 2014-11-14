class MobileController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_filter :is_login

  def get_unsend

    sms_queue = SmsData.where('user_id = ? and id_in_service = ?', @user.pwd, 0)
    @form_data = {
        sms_queue: sms_queue
    }

  end

end




private
def is_login

  @user = User.where('login = ? and pwd = ?', params[:login], params[:password])[0]


  if @user.nil? or @user.pwd != params[:pwd]
    render :text => params[:login].to_s+' | '+params[:pwd].to_s+' | '+@user.pwd.to_s
  else

  end

end