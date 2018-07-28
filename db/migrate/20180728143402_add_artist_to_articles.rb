class AddArtistToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :artist, :string
  end
end
