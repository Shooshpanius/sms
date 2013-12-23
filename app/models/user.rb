class User < ActiveRecord::Base
  has_many :file_roots, dependent: :destroy
  has_many :list_roots, dependent: :destroy
  has_many :clients, dependent: :destroy
  has_many :file_filter_settings, dependent: :destroy
end
