class FileString < ActiveRecord::Base

  def FileString.get_strings(file_id, user_id)
    if FileRoot.find(file_id).user_id = user_id
      strings = FileString.where("file_root_id = ?", file_id)
    end
    return strings
  end



end
