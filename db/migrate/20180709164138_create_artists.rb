class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :nationality
      t.date :born_date

      t.belongs_to :song
      t.belongs_to :album
      t.belongs_to :category
      t.belongs_to :music_genre
      
      t.timestamps
    end
  end
end
