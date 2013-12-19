class CreateClientPhones < ActiveRecord::Migration
  def change
    create_table :client_phones do |t|

      t.timestamps
    end
  end
end
