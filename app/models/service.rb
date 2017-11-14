class Service < ActiveRecord::Base
  mount_uploader :image, ServiceUploader
  belongs_to :service_category
  
  validates_presence_of :name, :image, :description, :service_category_id
end
