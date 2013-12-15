class CreateFileStrings < ActiveRecord::Migration
  def change
    create_table :file_strings do |t|

      t.timestamps
    end
  end
end
