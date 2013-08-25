class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :position
      t.string :permalink
      t.string :keywords
      t.text :description
      t.string :parent_id

      t.timestamps
    end
  end
end
