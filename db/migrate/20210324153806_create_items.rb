class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :url
      t.float :price
      t.string :img
      t.belongs_to :folder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
