class CreateQuoteRequests < ActiveRecord::Migration
  def change
    create_table :quote_requests do |t|
      t.string :email
      t.string :title
      t.text :description
      t.decimal :budget
      t.date :deadline

      t.timestamps
    end
  end
end
