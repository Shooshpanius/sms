class Client < ActiveRecord::Base
  has_many :client_phones, dependent: :destroy
  has_many :relatives, dependent: :destroy


  #def Client.get_phones(clients)
  #  client_phones = []
  #  clients.each do |client|
  #    phones = Client.client_phones.all
  #
  #
  #
  #  end
  #
  #
  #end



end
