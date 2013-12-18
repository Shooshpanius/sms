class FileRoot < ActiveRecord::Base
  has_many :file_strings, dependent: :destroy
end
