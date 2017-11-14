class CreateContactDetails < ActiveRecord::Migration
  def migrate(direction)
    super
    ContactDetail.create!(address: "123 ABC St.", telephone: "01234567890", fax: "01234567890", email: "admin@example.com", description: "Lorem Ipsum.") if direction == :up
  end
  
  def change
    create_table :contact_details do |t|
      t.text :address
      t.string :telephone
      t.string :fax
      t.string :email
      t.text :description
      t.timestamps null: false
    end
  end
end
