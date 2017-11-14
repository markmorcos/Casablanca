class SocialLink < ActiveRecord::Base
  mount_uploader :image, SocialLinkUploader
  validates_presence_of :name, :target
end
