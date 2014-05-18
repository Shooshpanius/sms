# coding: utf-8
class ListString < ActiveRecord::Base


  def ListString.get_strings(list_id, user_id)
    strings = []
    if ListRoot.find(list_id).user_id == user_id
      strings = ListString.where('list_root_id = ?', list_id)
    end
    return strings
  end

  def ListString.try_delete(list_string_id, user_id)
    list_string = ListString.find(list_string_id)
    list_root = ListRoot.find(list_string.list_root_id)
    if list_root.user_id == user_id
      ListString.destroy(list_string_id)
      return list_string_id
    else
      return nil
    end

  end


  def ListString.add_strings_from_file(list_root_id, params, file_strings, user_id)

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
          s_fio = ''
      end

      next if s_fio.nil? || s_fio.match('ФИО Клиента')


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
          dogovor = ''
      end

      # next if dogovor.to_i != dogovor

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
          phone = ''
      end

      if phone.present? && !phone.nil? && phone!='' && phone.size>1
        phone.gsub!(/(\+7)/, '').gsub!(/\(*/, '').gsub!(/\)*/, '').gsub!(/\-*/, '')
      end
 #

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
          sum_main = ''
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
          sum_plat = ''
      end

      case params[:date_oplata]
        when 's_00'
          oplata_date = file_string.s_00
        when 's_01'
          oplata_date = file_string.s_01
        when 's_02'
          oplata_date = file_string.s_02
        when 's_03'
          oplata_date = file_string.s_03
        when 's_04'
          oplata_date = file_string.s_04
        when 's_05'
          oplata_date = file_string.s_05
        when 's_06'
          oplata_date = file_string.s_06
        when 's_07'
          oplata_date = file_string.s_07
        when 's_08'
          oplata_date = file_string.s_08
        when 's_09'
          oplata_date = file_string.s_09
        when 's_10'
          oplata_date = file_string.s_10
        when 's_11'
          oplata_date = file_string.s_11
        when 's_12'
          oplata_date = file_string.s_12
        when 's_13'
          oplata_date = file_string.s_13
        when 's_14'
          oplata_date = file_string.s_14
        when 's_15'
          oplata_date = file_string.s_15
        when 's_16'
          oplata_date = file_string.s_16
        when 's_17'
          oplata_date = file_string.s_17
        when 's_18'
          oplata_date = file_string.s_18
        when 's_19'
          oplata_date = file_string.s_19
        when 's_20'
          oplata_date = file_string.s_20
        when 's_21'
          oplata_date = file_string.s_21
        when 's_22'
          oplata_date = file_string.s_22
        when 's_23'
          oplata_date = file_string.s_23
        when 's_24'
          oplata_date = file_string.s_24
        when 's_25'
          oplata_date = file_string.s_25
        else
          oplata_date = ''
      end

      case params[:addr]
        when 's_00'
          addr = file_string.s_00
        when 's_01'
          addr = file_string.s_01
        when 's_02'
          addr = file_string.s_02
        when 's_03'
          addr = file_string.s_03
        when 's_04'
          addr = file_string.s_04
        when 's_05'
          addr = file_string.s_05
        when 's_06'
          addr = file_string.s_06
        when 's_07'
          addr = file_string.s_07
        when 's_08'
          addr = file_string.s_08
        when 's_09'
          addr = file_string.s_09
        when 's_10'
          addr = file_string.s_10
        when 's_11'
          addr = file_string.s_11
        when 's_12'
          addr = file_string.s_12
        when 's_13'
          addr = file_string.s_13
        when 's_14'
          addr = file_string.s_14
        when 's_15'
          addr = file_string.s_15
        when 's_16'
          addr = file_string.s_16
        when 's_17'
          addr = file_string.s_17
        when 's_18'
          addr = file_string.s_18
        when 's_19'
          addr = file_string.s_19
        when 's_20'
          addr = file_string.s_20
        when 's_21'
          addr = file_string.s_21
        when 's_22'
          addr = file_string.s_22
        when 's_23'
          addr = file_string.s_23
        when 's_24'
          addr = file_string.s_24
        when 's_25'
          addr = file_string.s_25
        else
          addr = ''
      end

      case params[:contact]
        when 's_00'
          contact = file_string.s_00
        when 's_01'
          contact = file_string.s_01
        when 's_02'
          contact = file_string.s_02
        when 's_03'
          contact = file_string.s_03
        when 's_04'
          contact = file_string.s_04
        when 's_05'
          contact = file_string.s_05
        when 's_06'
          contact = file_string.s_06
        when 's_07'
          contact = file_string.s_07
        when 's_08'
          contact = file_string.s_08
        when 's_09'
          contact = file_string.s_09
        when 's_10'
          contact = file_string.s_10
        when 's_11'
          contact = file_string.s_11
        when 's_12'
          contact = file_string.s_12
        when 's_13'
          contact = file_string.s_13
        when 's_14'
          contact = file_string.s_14
        when 's_15'
          contact = file_string.s_15
        when 's_16'
          contact = file_string.s_16
        when 's_17'
          contact = file_string.s_17
        when 's_18'
          contact = file_string.s_18
        when 's_19'
          contact = file_string.s_19
        when 's_20'
          contact = file_string.s_20
        when 's_21'
          contact = file_string.s_21
        when 's_22'
          contact = file_string.s_22
        when 's_23'
          contact = file_string.s_23
        when 's_24'
          contact = file_string.s_24
        when 's_25'
          contact = file_string.s_25
        else
          contact = ''
      end


      filter_agent_text = ''
      if params[:filter_agent].size > 0 and params[:filter_agent_text].size > 0
        case params[:filter_agent]
          when 's_00'
            filter_agent_text = file_string.s_00
          when 's_01'
            filter_agent_text = file_string.s_01
          when 's_02'
            filter_agent_text = file_string.s_02
          when 's_03'
            filter_agent_text = file_string.s_03
          when 's_04'
            filter_agent_text = file_string.s_04
          when 's_05'
            filter_agent_text = file_string.s_05
          when 's_06'
            filter_agent_text = file_string.s_06
          when 's_07'
            filter_agent_text = file_string.s_07
          when 's_08'
            filter_agent_text = file_string.s_08
          when 's_09'
            filter_agent_text = file_string.s_09
          when 's_10'
            filter_agent_text = file_string.s_10
          when 's_11'
            filter_agent_text = file_string.s_11
          when 's_12'
            filter_agent_text = file_string.s_12
          when 's_13'
            filter_agent_text = file_string.s_13
          when 's_14'
            filter_agent_text = file_string.s_14
          when 's_15'
            filter_agent_text = file_string.s_15
          when 's_16'
            filter_agent_text = file_string.s_16
          when 's_17'
            filter_agent_text = file_string.s_17
          when 's_18'
            filter_agent_text = file_string.s_18
          when 's_19'
            filter_agent_text = file_string.s_19
          when 's_20'
            filter_agent_text = file_string.s_20
          when 's_21'
            filter_agent_text = file_string.s_21
          when 's_22'
            filter_agent_text = file_string.s_22
          when 's_23'
            filter_agent_text = file_string.s_23
          when 's_24'
            filter_agent_text = file_string.s_24
          when 's_25'
            filter_agent_text = file_string.s_25
          else
            filter_agent_text = ''
        end
      end



      if  (filter_agent_text.size > 0 and filter_agent_text == params[:filter_agent_text]) or (filter_agent_text.size == 0)
        ListString.create(
            :list_root_id => list_root_id,
            :fio => s_fio,
            :dogovor => dogovor,
            :summa => sum_plat,
            :summa_dolg => sum_main,
            :oplata_date => oplata_date,
            :phone => phone
        )

        client = Client.where('user_id = ? and dogovor = ?', user_id, dogovor)
        if client.size == 0
          client_id =  Client.create(
            :user_id => user_id,
            :fio => s_fio,
            :dogovor => dogovor,
            :adress => addr
          )
          if phone != nil
            phone_array = phone.scan(/[[:word:]]+/)
            ClientPhone.update_phones(phone_array, client_id.id)
          end
          Relative.update_phones(contact, client_id.id)

        else
          Client.update(
              client[0].id,
              :user_id => user_id,
              :fio => s_fio,
              :dogovor => dogovor,
              :adress => addr
          )
          if phone != nil
            phone_array = phone.scan(/[[:word:]]+/)
            ClientPhone.update_phones(phone_array, client[0].id)
          end
          Relative.update_phones(contact, client[0].id)

        end


      end

      #if (sum_plat.to_i > 0 and sum_main.to_i > 0) and
      #    ( (filter_agent_text.size > 0 and filter_agent_text == params[:filter_agent_text]) or (filter_agent_text.size == 0) )
      #  new_file_string.save
      #end

    end

  end




end
