class User < ActiveRecord::Base
  has_many :file_roots, dependent: :destroy
  has_many :delivery_roots, dependent: :destroy
  has_many :clients, dependent: :destroy
end
