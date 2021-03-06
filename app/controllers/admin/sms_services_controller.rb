class Admin::SmsServicesController < ApplicationController


  before_filter :is_login, :is_admin


  def index
    sms_services = SmsService.all
    @form_data = {
        sms_services: sms_services
    }
  end

  def edit
    sms_service = SmsService.find(params[:id])
    @form_data = {
        sms_service: sms_service
    }
  end

  def srv_service_edit
    SmsService.update(
        params[:service_id],
        name: params[:name],
        service_type: params[:service_type],
        login: params[:login],
        password: params[:password],
        from: params[:from],
        from2d: params[:from2d]
    )
    render nothing: true
  end

  private
  def is_login
    if !session[:is_login]
      redirect_to "/"
    end
  end

  private
  def is_admin
    if !session[:is_admin]
      redirect_to "/"
    end
  end


end
