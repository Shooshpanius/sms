class CreateDeliveryStrings < ActiveRecord::Migration
  def change
    create_table :delivery_strings do |t|

      t.timestamps
    end
  end
end
