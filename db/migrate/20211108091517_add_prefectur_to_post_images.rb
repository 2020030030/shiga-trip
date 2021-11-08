class AddPrefecturToPostImages < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :prefecture_id, :integer
  end
end
