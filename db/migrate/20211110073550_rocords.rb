class Rocords < ActiveRecord::Migration[5.2]
  def change
    drop_table :post_genre_relations
    drop_table :genres
    drop_table :posts_images
  end
end
