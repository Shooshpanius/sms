class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.belongs_to :user
      t.string :fio
      t.string :dogovor
      t.string :adress

      t.timestamps
    end
  end
end
