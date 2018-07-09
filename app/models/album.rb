class Album < ApplicationRecord
    has_many :song
    has_many :artist
    has_many :category
    has_many :music_genre
end
