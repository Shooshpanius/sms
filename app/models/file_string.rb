class FileString < ActiveRecord::Base

  def FileString.get_strings(file_id, user_id)
    if FileRoot.find(file_id).user_id = user_id
      strings = FileString.where("file_root_id = ?", file_id)
    end
    return strings
  end


  def FileString.add_strings_from_file(list_root_id, params, file_strings)

    file_strings.each do |file_string|

      case params[:s_fio]
        when 's_00'
          s_fio = file_string.s_00
        when 's_01'
          s_fio = file_string.s_01
        when 's_02'
          s_fio = file_string.s_02
        when 's_03'
          s_fio = file_string.s_03
        when 's_04'
          s_fio = file_string.s_04
        when 's_05'
          s_fio = file_string.s_05
        when 's_06'
          s_fio = file_string.s_06
        when 's_07'
          s_fio = file_string.s_07
        when 's_08'
          s_fio = file_string.s_08
        when 's_09'
          s_fio = file_string.s_09
        when 's_10'
          s_fio = file_string.s_10
        when 's_11'
          s_fio = file_string.s_11
        when 's_12'
          s_fio = file_string.s_12
        when 's_13'
          s_fio = file_string.s_13
        when 's_14'
          s_fio = file_string.s_14
        when 's_15'
          s_fio = file_string.s_15
        when 's_16'
          s_fio = file_string.s_16
        when 's_17'
          s_fio = file_string.s_17
        when 's_18'
          s_fio = file_string.s_18
        when 's_19'
          s_fio = file_string.s_19
        when 's_20'
          s_fio = file_string.s_20
        when 's_21'
          s_fio = file_string.s_21
        when 's_22'
          s_fio = file_string.s_22
        when 's_23'
          s_fio = file_string.s_23
        when 's_24'
          s_fio = file_string.s_24
        when 's_25'
          s_fio = file_string.s_25
        else
          s_fio = null
      end


      case params[:dogovor]
        when 's_00'
          dogovor = file_string.s_00
        when 's_01'
          dogovor = file_string.s_01
        when 's_02'
          dogovor = file_string.s_02
        when 's_03'
          dogovor = file_string.s_03
        when 's_04'
          dogovor = file_string.s_04
        when 's_05'
          dogovor = file_string.s_05
        when 's_06'
          dogovor = file_string.s_06
        when 's_07'
          dogovor = file_string.s_07
        when 's_08'
          dogovor = file_string.s_08
        when 's_09'
          dogovor = file_string.s_09
        when 's_10'
          dogovor = file_string.s_10
        when 's_11'
          dogovor = file_string.s_11
        when 's_12'
          dogovor = file_string.s_12
        when 's_13'
          dogovor = file_string.s_13
        when 's_14'
          dogovor = file_string.s_14
        when 's_15'
          dogovor = file_string.s_15
        when 's_16'
          dogovor = file_string.s_16
        when 's_17'
          dogovor = file_string.s_17
        when 's_18'
          dogovor = file_string.s_18
        when 's_19'
          dogovor = file_string.s_19
        when 's_20'
          dogovor = file_string.s_20
        when 's_21'
          dogovor = file_string.s_21
        when 's_22'
          dogovor = file_string.s_22
        when 's_23'
          dogovor = file_string.s_23
        when 's_24'
          dogovor = file_string.s_24
        when 's_25'
          dogovor = file_string.s_25
        else
          dogovor = null
      end


      case params[:phone]
        when 's_00'
          phone = file_string.s_00
        when 's_01'
          phone = file_string.s_01
        when 's_02'
          phone = file_string.s_02
        when 's_03'
          phone = file_string.s_03
        when 's_04'
          phone = file_string.s_04
        when 's_05'
          phone = file_string.s_05
        when 's_06'
          phone = file_string.s_06
        when 's_07'
          phone = file_string.s_07
        when 's_08'
          phone = file_string.s_08
        when 's_09'
          phone = file_string.s_09
        when 's_10'
          phone = file_string.s_10
        when 's_11'
          phone = file_string.s_11
        when 's_12'
          phone = file_string.s_12
        when 's_13'
          phone = file_string.s_13
        when 's_14'
          phone = file_string.s_14
        when 's_15'
          phone = file_string.s_15
        when 's_16'
          phone = file_string.s_16
        when 's_17'
          phone = file_string.s_17
        when 's_18'
          phone = file_string.s_18
        when 's_19'
          phone = file_string.s_19
        when 's_20'
          phone = file_string.s_20
        when 's_21'
          phone = file_string.s_21
        when 's_22'
          phone = file_string.s_22
        when 's_23'
          phone = file_string.s_23
        when 's_24'
          phone = file_string.s_24
        when 's_25'
          phone = file_string.s_25
        else
          phone = null
      end

      case params[:sum_main]
        when 's_00'
          sum_main = file_string.s_00
        when 's_01'
          sum_main = file_string.s_01
        when 's_02'
          sum_main = file_string.s_02
        when 's_03'
          sum_main = file_string.s_03
        when 's_04'
          sum_main = file_string.s_04
        when 's_05'
          sum_main = file_string.s_05
        when 's_06'
          sum_main = file_string.s_06
        when 's_07'
          sum_main = file_string.s_07
        when 's_08'
          sum_main = file_string.s_08
        when 's_09'
          sum_main = file_string.s_09
        when 's_10'
          sum_main = file_string.s_10
        when 's_11'
          sum_main = file_string.s_11
        when 's_12'
          sum_main = file_string.s_12
        when 's_13'
          sum_main = file_string.s_13
        when 's_14'
          sum_main = file_string.s_14
        when 's_15'
          sum_main = file_string.s_15
        when 's_16'
          sum_main = file_string.s_16
        when 's_17'
          sum_main = file_string.s_17
        when 's_18'
          sum_main = file_string.s_18
        when 's_19'
          sum_main = file_string.s_19
        when 's_20'
          sum_main = file_string.s_20
        when 's_21'
          sum_main = file_string.s_21
        when 's_22'
          sum_main = file_string.s_22
        when 's_23'
          sum_main = file_string.s_23
        when 's_24'
          sum_main = file_string.s_24
        when 's_25'
          sum_main = file_string.s_25
        else
          sum_main = null
      end

      case params[:sum_plat]
        when 's_00'
          sum_plat = file_string.s_00
        when 's_01'
          sum_plat = file_string.s_01
        when 's_02'
          sum_plat = file_string.s_02
        when 's_03'
          sum_plat = file_string.s_03
        when 's_04'
          sum_plat = file_string.s_04
        when 's_05'
          sum_plat = file_string.s_05
        when 's_06'
          sum_plat = file_string.s_06
        when 's_07'
          sum_plat = file_string.s_07
        when 's_08'
          sum_plat = file_string.s_08
        when 's_09'
          sum_plat = file_string.s_09
        when 's_10'
          sum_plat = file_string.s_10
        when 's_11'
          sum_plat = file_string.s_11
        when 's_12'
          sum_plat = file_string.s_12
        when 's_13'
          sum_plat = file_string.s_13
        when 's_14'
          sum_plat = file_string.s_14
        when 's_15'
          sum_plat = file_string.s_15
        when 's_16'
          sum_plat = file_string.s_16
        when 's_17'
          sum_plat = file_string.s_17
        when 's_18'
          sum_plat = file_string.s_18
        when 's_19'
          sum_plat = file_string.s_19
        when 's_20'
          sum_plat = file_string.s_20
        when 's_21'
          sum_plat = file_string.s_21
        when 's_22'
          sum_plat = file_string.s_22
        when 's_23'
          sum_plat = file_string.s_23
        when 's_24'
          sum_plat = file_string.s_24
        when 's_25'
          sum_plat = file_string.s_25
        else
          sum_plat = null
      end


      new_file_string = FileString.new
      new_file_string.list_root_id = list_root_id
      new_file_string.fio = s_fio
      new_file_string.dogovor = dogovor
      new_file_string.summa = 	sum_plat
      new_file_string.summa_dolg = sum_main
      new_file_string.oplata_date = oplata_date
      new_file_string.phone = phone
      new_file_string.created_at = created_at
      new_file_string.updated_at = updated_at



      new_file_string.save

    end

  end

end
