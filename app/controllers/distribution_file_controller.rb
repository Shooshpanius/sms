class DistributionFileController < ApplicationController

  protect_from_forgery except: :srv_new_file
  before_filter :is_login


  def index


  end

  def srv_new_file

    #render :nothing => true

    #render text: params



    # In this example the model MyFile has_attached_file :attachment
    @workbook = Spreadsheet.open(params[:inputFile].tempfile)

    # Get the first worksheet in the Excel file
    @worksheet = @workbook.worksheet(0)

    # It can be a little tricky looping through the rows since the variable
    # @worksheet.rows often seem to be empty, but this will work:



    #render text: @worksheet

    #redirect_to "/distribution_file"

  end


  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end

end
