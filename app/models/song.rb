class Song < ApplicationRecord
    has_and_belongs_to_many :albums
    has_and_belongs_to_many :artists
    has_and_belongs_to_many :categories
    has_and_belongs_to_many :music_genres

end
