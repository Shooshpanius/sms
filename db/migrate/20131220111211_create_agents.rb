class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.belongs_to :user
      t.string :name

      t.timestamps
    end
  end
end
