class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :value

      t.belongs_to :album
      t.belongs_to :songs
      t.belongs_to :artists
      
      t.timestamps
    end
  end
end
