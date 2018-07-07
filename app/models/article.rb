class Article < ApplicationRecord
    has_one :article_detail
    def to_hash
    { title: self.title, category: self.category}
    end
end
