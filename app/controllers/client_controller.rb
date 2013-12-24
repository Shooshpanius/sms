class ClientController < ApplicationController
  def index

    id = params[:id]

    clients = Client.where('user_id = ?', session[:user_id])

    @form_data = {
        id: id,
        clients: clients
    }

  end
end
