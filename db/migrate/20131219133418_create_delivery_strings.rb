class CreateDeliveryStrings < ActiveRecord::Migration
  def change
    create_table :delivery_strings do |t|
      t.belongs_to :delivery_root
      t.string :fio
      t.string :dogovor
      t.float :summa
      t.float :summa_dolg
      t.datetime :oplata_date
      t.string :phone

      t.timestamps
    end
  end
end
