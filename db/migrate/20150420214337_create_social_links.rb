class CreateSocialLinks < ActiveRecord::Migration
  def change
    create_table :social_links do |t|
      t.string :name
      t.string :image
      t.string :target
      t.timestamps null: false
    end
  end
end
