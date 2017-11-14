class Slider < ActiveRecord::Base
  mount_uploader :image, SliderUploader
  validates_presence_of :image
end
