class RenameImageUrlToImage < ActiveRecord::Migration[6.0]
  def change
    rename_column :books, :image_url, :image
    change_column :books, :image, :text
  end
end
