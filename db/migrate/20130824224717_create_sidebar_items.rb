class CreateSidebarItems < ActiveRecord::Migration
  def change
    create_table :sidebar_items do |t|
      t.integer :position
      t.string :type

      t.timestamps
    end
  end
end
