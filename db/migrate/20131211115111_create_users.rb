class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :username
      t.string :email
      t.string :pwd
      t.string :qiwi
      t.boolean :adm
      t.boolean :active
      t.float :price_sms
      t.float :price_voice

      t.timestamps
    end
  end
end
