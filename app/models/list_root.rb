class ListRoot < ActiveRecord::Base
  has_many :list_strings, dependent: :destroy
end
