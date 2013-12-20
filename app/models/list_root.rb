class ListRoot < ActiveRecord::Base
  has_many :list_strings, dependent: :destroy

  def ListRoot.try_delete(list_id, user_id)
    if ListRoot.find(list_id).user_id = user_id
      ListRoot.destroy(list_id)
    end
  end


end
