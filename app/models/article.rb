class Article < ApplicationRecord
    has_one :article_detail
    belongs_to :article_type

    has_one_attached :image
    def to_hash
    { title: self.title, category: self.category}
    end

end
