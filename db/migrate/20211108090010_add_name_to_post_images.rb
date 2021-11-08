class AddNameToPostImages < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :name, :string
  end
end
