class Album < ApplicationRecord
    has_and_belongs_to_many :songs
    has_and_belongs_to_many :artists
    has_and_belongs_to_many :categories
    has_and_belongs_to_many :music_genres

end
