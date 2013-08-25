class CreatePortfolioItems < ActiveRecord::Migration
  def change
    create_table :portfolio_items do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :resume_detail_id

      t.timestamps
    end
  end
end
