class CreateFileRoots < ActiveRecord::Migration
  def change
    create_table :file_roots do |t|
      t.integer :user_id
      t.string :filename
      t.timestamps
    end
  end
end
