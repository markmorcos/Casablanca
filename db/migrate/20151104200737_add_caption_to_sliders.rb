class AddCaptionToSliders < ActiveRecord::Migration
  def change
    add_column :sliders, :caption, :string
  end
end
