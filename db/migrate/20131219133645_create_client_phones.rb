class CreateClientPhones < ActiveRecord::Migration
  def change
    create_table :client_phones do |t|
      t.belongs_to :client
      t.integer :phone
      t.integer :phone_type
      t.boolean :replace
      t.integer :replace_phone

      t.timestamps
    end
  end
end
