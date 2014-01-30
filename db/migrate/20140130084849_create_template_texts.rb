class CreateTemplateTexts < ActiveRecord::Migration
  def change
    create_table :template_texts do |t|
      t.belongs_to :user
      t.string :name
      t.text :text
      t.boolean :translite

      t.timestamps
    end
  end
end
