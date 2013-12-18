class CreateFileStrings < ActiveRecord::Migration
  def change
    create_table :file_strings do |t|
      t.belongs_to :file_root
      t.string :s_00
      t.string :s_01
      t.string :s_02
      t.string :s_03
      t.string :s_04
      t.string :s_05
      t.string :s_06
      t.string :s_07
      t.string :s_08
      t.string :s_09
      t.string :s_10
      t.string :s_11
      t.string :s_12
      t.string :s_13
      t.string :s_14
      t.string :s_15
      t.string :s_16
      t.string :s_17
      t.string :s_18
      t.string :s_19
      t.string :s_20
      t.string :s_21
      t.string :s_22
      t.string :s_23
      t.string :s_24
      t.string :s_25

      t.timestamps
    end
  end
end
