class MusicGenre < ApplicationRecord
    has_many :album
    has_many :song
    has_many :artist
    
end
