class Relative < ActiveRecord::Base
  has_many :relative_phones, dependent: :destroy


  def Relative.update_phones(contact, client_id, user_id)

    contact_array = contact.split(', ')

    Relative.create(
        :client_id => client_id,
        :fio => contact_array,
        :relationship => contact_array.size
    )



  end

end
