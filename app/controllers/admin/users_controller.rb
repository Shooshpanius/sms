class Admin::UsersController < ApplicationController

  before_filter :is_login, :is_admin


  def index
    users = User.all
    @form_data = {
        users: users
    }
  end

  def edit
    user = User.find(params[:id])
    sms_services = SmsService.all().map { |sms_service| [sms_service.name, sms_service.id] }
    @form_data = {
        user: user,
        sms_services: sms_services
    }
  end

  def srv_user_edit
    User.update(
        params[:user_id],
        login: params[:login],
        username: params[:username],
        email: params[:email],
        pwd: params[:pwd],
        qiwi: params[:qiwi],
        adm: params[:adm],
        active: params[:active],
        price_sms: params[:price_sms],
        price_voice: params[:price_voice],
        service_sms_id: params[:service_sms_id],
        service_voice_id: params[:service_voice_id]
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
