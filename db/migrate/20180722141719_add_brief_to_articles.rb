class AddBriefToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :brief, :string;
  end
end
