class ClientController < ApplicationController
  def index

    id = params[:id]

    if id == nil
      clients = Client.where('user_id = ?', session[:user_id])
    else
      clients = Client.where('user_id = ? and lower(fio) like ?', session[:user_id], id+'%')
    end


    @form_data = {
        id: id,
        clients: clients
    }

  end
end
