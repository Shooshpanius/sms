class DeliveryRoot < ActiveRecord::Base
  has_many :delivery_strings, dependent: :destroy


end
