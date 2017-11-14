class Client < ActiveRecord::Base
  mount_uploader :image, ClientUploader
  validates_presence_of :name, :image, :description
end
