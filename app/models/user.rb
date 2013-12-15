class User < ActiveRecord::Base
  has_many :file_roots
end
