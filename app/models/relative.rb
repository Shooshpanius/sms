class Relative < ActiveRecord::Base
  has_many :relative_phones, dependent: :destroy

end
