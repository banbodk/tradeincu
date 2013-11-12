class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :content
      t.float :price
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
    add_index :posts, [:user_id, :category_id, :created_at]
  end
end
