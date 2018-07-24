class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      
      t.belongs_to :song
      t.belongs_to :artist
      t.belongs_to :category
      t.belongs_to :music_genre

      t.timestamps
    end
  end
end
