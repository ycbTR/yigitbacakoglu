class CreateResumeDetails < ActiveRecord::Migration
  def change
    create_table :resume_details do |t|
      t.string :name
      t.string :title
      t.date :start_year
      t.date :end_year
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
