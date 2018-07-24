class AddColumnToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :author, :string
    add_column :articles, :recommender, :string
    add_column :articles, :url, :text

    change_column :articles, :author, :string, :null =>false
  end
end
