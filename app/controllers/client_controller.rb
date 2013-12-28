class ClientController < ApplicationController

  before_filter :is_login


  def index
    id = params[:id]
    if id == nil
      clients = Client.where('user_id = ?', session[:user_id]).order('fio ASC')
    else
      clients = Client.where('user_id = ? and lower(fio) like ?', session[:user_id], id+'%').order('fio ASC')
    end
    @form_data = {
        id: id,
        clients: clients
    }
  end



  def srv_phone_edit_show

    phone_id = params[:phone_id]
    phone = ClientPhone.find(phone_id)
    client = Client.find(phone.client_id)

    @form_data = {
        phone: phone,
        client: client
    }

    render layout: false

  end


  def srv_phone_edit_save

    render nothing: true

  end

  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end


end
