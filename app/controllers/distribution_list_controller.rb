class DistributionListController < ApplicationController


  before_filter :is_login


  def index

    my_lists = ListRoot.where("user_id = ?", session[:user_id])

    @form_data = {
        my_lists: my_lists
    }

  end


  def srv_file_to_list

    file_root = FileRoot.find(params[:file_id])

    if file_root.user_id == session[:user_id]

      list_root = ListRoot.new
        list_root.user_id = session[:user_id]
        if params[:list_name].size == 0
          list_root.name = file_root.filename
        else
          list_root.name = params[:list_name]
        end
      list_root.save

      list_root_id = list_root.id

      file_strings = FileString.where("file_root_id = ?", file_root.id)
      ListString.add_strings_from_file(list_root_id, params, file_strings)

    end

    render :nothing => true

  end


  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end


end
