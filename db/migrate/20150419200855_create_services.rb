class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :service_category_id
      t.timestamps null: false
    end
  end
end
