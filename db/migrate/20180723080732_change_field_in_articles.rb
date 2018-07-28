class ChangeFieldInArticles < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :articles, :brief, :text
    end

    def down
      change_column :articles, :brief, :string
    end 
  end
end
