class CreateArticleTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :article_types do |t|
      t.string :name
    end

    add_reference(:articles, :article_type)

  end
end
