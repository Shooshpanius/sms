class CreateClientPhones < ActiveRecord::Migration
  def change
    create_table :client_phones do |t|
      t.belongs_to :client
      t.decimal :phone, :precision => 10
      t.integer :phone_type
      t.boolean :replace
      t.decimal :replace_phone, :precision => 10

      t.timestamps
    end
  end
end
