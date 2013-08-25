class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.float :value
      t.float :max_value

      t.timestamps
    end
  end
end
