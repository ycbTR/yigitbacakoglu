class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :content_id
      t.integer :content_type
      t.integer :category_id
      t.boolean :is_primary

      t.timestamps
    end
  end
end
