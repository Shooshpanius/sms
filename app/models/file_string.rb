class FileString < ActiveRecord::Base

  def FileString.get_strings(file_id, user_id)
    if FileRoot.find(file_id).user_id = user_id
      strings = FileString.where("file_root_id = ?", file_id)
    end
    return strings
  end


  def FileString.add_strings_from_file(file_root_id, params, file_strings)

    file_strings.each.with_index do |file_string, index|

      case params[:s_fio]
        when "s_00"
          fio = file_string.s_00
        when "s_01"
          fio = file_string.s_01
        when "s_02"
          fio = file_string.s_02
        when "s_03"
          fio = file_string.s_03
        when "s_04"
          fio = file_string.s_04
        when "s_05"
          fio = file_string.s_05
        when "s_06"
          fio = file_string.s_06
        when "s_07"
          fio = file_string.s_07
        when "s_08"
          fio = file_string.s_08
        when "s_09"
          fio = file_string.s_09
        when "s_10"
          fio = file_string.s_10
        when "s_11"
          fio = file_string.s_11
        when "s_12"
          fio = file_string.s_12
        when "s_13"
          fio = file_string.s_13
        when "s_14"
          fio = file_string.s_14
        when "s_15"
          fio = file_string.s_15
        when "s_16"
          fio = file_string.s_16
        when "s_17"
          fio = file_string.s_17
        when "s_18"
          fio = file_string.s_18
        when "s_19"
          fio = file_string.s_19
        when "s_20"
          fio = file_string.s_20
        when "s_21"
          fio = file_string.s_21
        when "s_22"
          fio = file_string.s_22
        when "s_23"
          fio = file_string.s_23
        when "s_24"
          fio = file_string.s_24
        when "s_25"
          fio = file_string.s_25
        else
          fio = null
      end


    end

  end

end
