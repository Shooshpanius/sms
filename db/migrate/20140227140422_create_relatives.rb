class CreateRelatives < ActiveRecord::Migration
  def change
    create_table :relatives do |t|
      t.belongs_to :client
      t.string :fio
      t.string :relationship

      t.timestamps
    end
  end
end
