class CreateFileStrings < ActiveRecord::Migration
  def change
    create_table :file_strings do |t|
      t.belongs_to :file_root
      t.timestamps
    end
  end
end
