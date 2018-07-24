class CreateMusicGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :music_genres do |t|
      t.string :value

      t.belongs_to :album
      t.belongs_to :song
      t.belongs_to :artist
      
      t.timestamps
    end
  end
end
