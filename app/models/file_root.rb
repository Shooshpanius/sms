class FileRoot < ActiveRecord::Base
  has_many :file_strings, dependent: :destroy


  def FileRoot.try_delete(file_id, user_id)
    if FileRoot.find(file_id).user_id = user_id
      FileRoot.destroy(file_id)
    end
  end


end
