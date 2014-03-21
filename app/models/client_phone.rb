class ClientPhone < ActiveRecord::Base



  def ClientPhone.update_phones(phone_array, client_id)

    phone_array.each do |phone|
      client_phone = ClientPhone.where('client_id = ? and phone = ?', client_id, phone)

      case phone[0]
        when '9'
          phone_type = 1
        else
          phone_type = 2
      end

      if client_phone.size == 0
        ClientPhone.create(
          :client_id => client_id,
          :phone => phone,
          :phone_type => phone_type
        )
      else
        ClientPhone.update(
            client_phone[0].id,
            :client_id => client_id,
            :phone => phone,
            :phone_type => phone_type
        )
      end


    end

  end


end
