class RenameTableAtircleDetails < ActiveRecord::Migration[5.2]
  def change
    rename_table :atircle_details, :article_details
  end
end
