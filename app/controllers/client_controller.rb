class ClientController < ApplicationController
  def index

    id = params[:id]

    @form_data = {
        id: id
    }

  end
end
