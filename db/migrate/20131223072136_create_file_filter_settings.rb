class CreateFileFilterSettings < ActiveRecord::Migration
  def change
    create_table :file_filter_settings do |t|
      t.belongs_to :user

      t.string :s_fio
      t.string :dogovor
      t.string :phone
      t.string :sum_main
      t.string :sum_plat
      t.string :addr
      t.string :contact
      t.string :filter_agent
      t.string :filter_agent_text

      t.timestamps
    end
  end
end
