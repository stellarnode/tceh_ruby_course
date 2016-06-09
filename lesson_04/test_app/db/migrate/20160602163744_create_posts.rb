class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :title_char_count, default: 0, null: false
      t.integer :body_char_count, default: 0, null: false

      t.timestamps null: false
    end
  end
end
