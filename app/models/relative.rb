class Relative < ActiveRecord::Base
  has_many :relative_phones, dependent: :destroy


  def Relative.update_phones(contact, client_id, user_id)

    contact_array = contact.split(' ,')





  end

end
