class Category < ApplicationRecord
    # 文章、歌曲、歌手 等等的大分類
    has_and_belongs_to_many :albums

    has_and_belongs_to_many :songs

    has_and_belongs_to_many :artists
    
    
end
