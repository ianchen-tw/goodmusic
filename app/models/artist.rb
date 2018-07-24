class Artist < ApplicationRecord
    has_and_belongs_to_many :songs
    has_and_belongs_to_many :albums
    has_and_belongs_to_many :categories
    has_and_belongs_to_many :music_genres

end
