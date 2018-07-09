class Artist < ApplicationRecord
    has_many :song
    has_many :album
    has_many :category
    has_many :genre
end
