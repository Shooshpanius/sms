class CreateDeliveryRoots < ActiveRecord::Migration
  def change
    create_table :delivery_roots do |t|
      t.belongs_to :user
      t.string :name

      t.timestamps
    end
  end
end
