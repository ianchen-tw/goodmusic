class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, :limit =>30
      t.string :type, :limit=>15
      t.timestamps
    end
  end
end
