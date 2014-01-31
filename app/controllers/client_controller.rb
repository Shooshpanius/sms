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
    if client.user_id == session[:user_id]
      render layout: false
    else
      render nothing: true
    end
  end


  def srv_phone_edit_save
    phone_id = params[:phone_id]
    phone = ClientPhone.find(phone_id)
    client = Client.find(phone.client_id)

    if client.user_id == session[:user_id]
      client_up = ClientPhone.update(
          phone_id,
          phone: params[:main_phone],
          replace_phone: params[:second_phone],
          replace: params[:checkbox]
      )
      if client_up.replace
        class_l = "<span class="'"label label-danger"'">"
        render text: "({'phone' : '#{class_l + client_up.replace_phone.to_s}</span>', 'replace' : '1'})"
        #render text: client_up.replace_phone
      else
        render text: "({'phone' : '"+client_up.phone.to_s+"', 'replace' : '0'})"
        #render text: client_up.phone
      end
    else
      render nothing: true
    end
  end

  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end


end
