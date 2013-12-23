class CreateFileFilterSettings < ActiveRecord::Migration
  def change
    create_table :file_filter_settings do |t|
      t.belongs_to :user

      t.timestamps
    end
  end
end
