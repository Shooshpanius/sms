class Admin::SmsServicesController < ApplicationController


  before_filter :is_login, :is_admin


  def index

    sms_services = SmsService.all

    @form_data = {
        sms_services: sms_services
    }

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
