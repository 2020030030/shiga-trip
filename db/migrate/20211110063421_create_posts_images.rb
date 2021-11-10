class CreatePostsImages < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_images do |t|

    t.integer "posts_id"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["posts_id"], name: "index_posts_images_on_posts_id"

    t.timestamps

    end
  end
end
