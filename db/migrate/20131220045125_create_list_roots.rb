class CreateListRoots < ActiveRecord::Migration
  def change
    create_table :list_roots do |t|
      t.belongs_to :user
      t.string :name

      t.timestamps
    end
  end
end
