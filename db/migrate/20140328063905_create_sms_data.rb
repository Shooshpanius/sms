class CreateSmsData < ActiveRecord::Migration
  def change
    create_table :sms_data do |t|

      t.belongs_to :sms_service
      t.decimal :phone, :precision => 10
      t.text :text
      t.string :service_sms_id
      t.string :service_status_in
      t.string :service_status_out
      t.float :summa

      t.timestamps
    end
  end
end
