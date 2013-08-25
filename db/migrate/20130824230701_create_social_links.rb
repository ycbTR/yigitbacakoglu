class CreateSocialLinks < ActiveRecord::Migration
  def change
    create_table :social_links do |t|
      t.string :url
      t.string :provider
      t.integer :profile_id

      t.timestamps
    end
  end
end
