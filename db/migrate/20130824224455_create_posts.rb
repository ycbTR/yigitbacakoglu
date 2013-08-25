class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :state
      t.datetime :published_at
      t.string :permalink
      t.string :meta_keys
      t.string :meta_description
      t.string :meta_title


      t.timestamps
    end
  end
end
