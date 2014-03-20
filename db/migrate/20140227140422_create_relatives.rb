class CreateRelatives < ActiveRecord::Migration
  def change
    create_table :relatives do |t|
      t.belongs_to :client
      t.string :fio
      t.string :relationship
      t.decimal :phone, :precision => 10
      t.integer :phone_type

      t.timestamps
    end
  end
end
