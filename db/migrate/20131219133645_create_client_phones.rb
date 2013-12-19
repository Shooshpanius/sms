class CreateClientPhones < ActiveRecord::Migration
  def change
    create_table :client_phones do |t|
      t.belongs_to :client

      t.timestamps
    end
  end
end
