class CreateFileRoots < ActiveRecord::Migration
  def change
    create_table :file_roots do |t|
      t.belongs_to :user
      t.string :filename
      t.timestamps
    end
  end
end
