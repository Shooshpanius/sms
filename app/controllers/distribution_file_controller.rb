class DistributionFileController < ApplicationController

  protect_from_forgery except: :srv_new_file
  before_filter :is_login


  def index

    my_files = FileRoot.where("user_id = ?", session[:user_id])

    @form_data = {
        my_files: my_files
    }


  end

  def edit
    file_id = params[:id]
    file_strings = FileString.get_strings(file_id, session[:user_id])

    @form_data = {
        file_strings: file_strings,
        file_id: file_id
    }

  end

  def delete
    file_id = params[:id]
    FileRoot.try_delete(file_id, session[:user_id])
    redirect_to "/distribution_file"
  end






  def srv_new_file

    workbook = Spreadsheet.open(params[:inputFile].tempfile)
    worksheet = workbook.worksheet(0)

    file_root = FileRoot.new
      file_root.user_id = session[:user_id]
      file_root.filename = params[:inputFile].original_filename.to_s

    file_root.save

    0.upto worksheet.last_row_index-1 do |index|
      # .row(index) will return the row which is a subclass of Array
      row = worksheet.row(index)
      file_string = FileString.new
      file_string.file_root_id = file_root.id

      file_string.s_00 = row[0]
      file_string.s_01 = row[1]
      file_string.s_02 = row[2]
      file_string.s_03 = row[3]
      file_string.s_04 = row[4]
      file_string.s_05 = row[5]
      file_string.s_06 = row[6]
      file_string.s_07 = row[7]
      file_string.s_08 = row[8]
      file_string.s_09 = row[9]
      file_string.s_10 = row[10]
      file_string.s_11 = row[11]
      file_string.s_12 = row[12]
      file_string.s_13 = row[13]
      file_string.s_14 = row[14]
      file_string.s_15 = row[15]
      file_string.s_16 = row[16]
      file_string.s_17 = row[17]
      file_string.s_18 = row[18]
      file_string.s_19 = row[19]
      file_string.s_20 = row[20]
      file_string.s_21 = row[21]
      file_string.s_22 = row[22]
      file_string.s_23 = row[23]
      file_string.s_24 = row[24]
      file_string.s_25 = row[25]

      file_string.save




    end
    redirect_to "/distribution_file"
  end


  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end

end
