class DistributionListController < ApplicationController


  before_filter :is_login


  def index


  end


  def srv_file_to_list




    file_root = FileRoot.find(params[:file_id])

    list_root = ListRoot.new
      list_root.user_id = session[:user_id]
      list_root.name = file_root.filename
    list_root.save


    file_strings = FileString.where("file_root_id = ?", file_root.id)
    ListString.add_strings_from_file(list_root.id, params, file_strings)



    render :nothing => true
  end


  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end


end
