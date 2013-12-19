class CreateDeliveryStrings < ActiveRecord::Migration
  def change
    create_table :delivery_strings do |t|
      t.belongs_to :delivery_root

      t.timestamps
    end
  end
end
