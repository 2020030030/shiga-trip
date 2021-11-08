class AddPrefectureToPostImage < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :prefecture, :string
  end
end
