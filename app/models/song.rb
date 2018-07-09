class Song < ApplicationRecord
    has_many :album
    has_many :artist
    has_many :category
    has_many :music_genre
end
