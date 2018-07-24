class MusicGenre < ApplicationRecord
    has_and_belongs_to_many :albums
    has_and_belongs_to_many :songs
    has_and_belongs_to_many :artists

    
end
