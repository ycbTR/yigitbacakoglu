class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :viewable_id
      t.string :viewable_type
      t.integer :position
      t.string :alt
      t.attachment :attachment
      t.string :type

      t.timestamps
    end


  end
end
