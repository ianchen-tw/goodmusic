class AddPublishAtToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :publish_at, :datetime
  end
end
