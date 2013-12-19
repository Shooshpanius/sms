class Client < ActiveRecord::Base
  has_many :client_phones, dependent: :destroy
end
