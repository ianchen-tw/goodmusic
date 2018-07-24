class Article < ApplicationRecord
    has_one :article_detail
    has_one_attached :image
    def to_hash
    { title: self.title, category: self.category}
    end

end
