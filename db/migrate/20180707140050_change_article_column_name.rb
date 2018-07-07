class ChangeArticleColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :Articles, :type, :category
  end
end
