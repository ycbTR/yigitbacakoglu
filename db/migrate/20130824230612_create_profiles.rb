class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :surname
      t.string :title
      t.string :phone
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
