class FileString < ActiveRecord::Base

  def FileString.get_strings(file_id, user_id)
    if FileRoot.find(file_id).user_id == user_id
      strings = FileString.where("file_root_id = ?", file_id)
    end
    return strings
  end

  def FileString.try_delete(file_string_id, user_id)
    file_string = FileString.find(file_string_id)
    file_root = FileRoot.find(file_string.file_root_id)
    if file_root.user_id == user_id
      FileString.destroy(file_string_id)
      return file_string_id
    else
      return nil
    end

  end

end
