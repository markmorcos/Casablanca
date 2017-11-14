class Project < ActiveRecord::Base
  mount_uploader :image, ProjectUploader
  
  validates_presence_of :name, :image, :description
end
