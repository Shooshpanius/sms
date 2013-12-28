class CreateListStrings < ActiveRecord::Migration
  def change
    create_table :list_strings do |t|
      t.belongs_to :list_root
      t.string :fio
      t.string :dogovor
      t.float :summa
      t.float :summa_dolg
      t.date :oplata_date
      t.string :phone


      t.timestamps
    end
  end
end
