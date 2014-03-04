class CreateRelativePhones < ActiveRecord::Migration
  def change
    create_table :relative_phones do |t|
      t.belongs_to :relative
      t.decimal :phone, :precision => 10
      t.integer :phone_type

      t.timestamps
    end
  end
end
