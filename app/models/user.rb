class User < ActiveRecord::Base
  has_many :file_roots, dependent: :destroy
end
