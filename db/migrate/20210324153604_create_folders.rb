class CreateFolders < ActiveRecord::Migration[6.1]
  def change
    create_table :folders do |t|
      t.string :name
      t.string :folder_type
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
