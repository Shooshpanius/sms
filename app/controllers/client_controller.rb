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


  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end


end
