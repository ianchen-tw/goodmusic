class Category < ApplicationRecord
    # 文章、歌曲、歌手 等等的大分類
    has_many :albums
    has_many :songs
    has_many :artists
    
end
