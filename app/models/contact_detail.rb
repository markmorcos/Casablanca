class ContactDetail < ActiveRecord::Base
  validates_presence_of :address, :telephone, :fax, :email
end
