class CreateDeliveryRoots < ActiveRecord::Migration
  def change
    create_table :delivery_roots do |t|

      t.timestamps
    end
  end
end
