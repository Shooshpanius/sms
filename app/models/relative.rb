class Relative < ActiveRecord::Base
  has_many :relative_phones, dependent: :destroy


  def Relative.update_phones(contact, client_id, user_id)

    contact_array = contact.split(', ')
    contact_array.each do |cont|
      rel = cont.split(';')
      if rel[0].size != 0

        fio = rel[0]

        phones_array = Array.new

        if rel.size == 2
          relationship = ''
          phones_array = rel[1].split(',')
        end
        if rel.size == 3
          relationship = rel[1]
          phones_array = rel[2].split(',')
        end

        phones_array.each do |phone|

          relative_phone = Relative.where('client_id = ? and phone = ?', client_id, phone)

          case phone[0]
            when '9'
              phone_type = 1
            else
              phone_type = 2
          end


          if relative_phone.size == 0
            Relative.create(
                :client_id => client_id,
                :fio => fio,
                :relationship => relationship,
                :phone => phone,
                :phone_type => phone_type
            )
          else
            Relative.update(
                relative_phone[0].id,
                :client_id => client_id,
                :fio => fio,
                :relationship => relationship,
                :phone => phone,
                :phone_type => phone_type
            )
          end

        end

      end


    end








  end

end
