class CreateSmsData < ActiveRecord::Migration
  def change
    create_table :sms_data do |t|

      t.belongs_to :user
      t.belongs_to :client
      t.decimal :sms_service_id
      t.decimal :phone, :precision => 10
      t.text :text
      t.string :id_in_service
      t.string :service_status_in
      t.string :service_status_out
      t.float :summa

      t.timestamps
    end
  end
end
