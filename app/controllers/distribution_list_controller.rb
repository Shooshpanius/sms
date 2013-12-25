class DistributionListController < ApplicationController


  before_filter :is_login


  def index

    my_lists = ListRoot.where('user_id = ?', session[:user_id])

    @form_data = {
        my_lists: my_lists
    }

  end

  def srv_delete_list
    list_id = params[:list_id]
    ListRoot.try_delete(list_id, session[:user_id])
    #redirect_to '/distribution_list'
  end


  def edit
    list_id = params[:id]
    list_strings = ListString.get_strings(list_id, session[:user_id])

    @form_data = {
        list_strings: list_strings,
        list_id: list_id
    }
  end



  def srv_file_to_list

    file_root = FileRoot.find(params[:file_id])

    if file_root.user_id == session[:user_id]

      list_root = ListRoot.new
        list_root.user_id = session[:user_id]
      (params[:list_name].size == 0) ? list_root.name = file_root.filename : list_root.name = params[:list_name]
      list_root.save

      list_root_id = list_root.id

      file_strings = FileString.where('file_root_id = ?', file_root.id)
      ListString.add_strings_from_file(list_root_id, params, file_strings, session[:user_id])

    end

    render :nothing => true

  end


  private
  def is_login
    if !session[:is_login]
      redirect_to '/login'
    end
  end


end
