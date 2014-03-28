class CreateSmsServices < ActiveRecord::Migration
  def change
    create_table :sms_services do |t|

      t.integer :service_type
      t.string :login
      t.string :password
      t.string :from
      t.string :from2

      t.timestamps
    end
  end
end
