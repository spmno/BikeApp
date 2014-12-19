class BikePhoto < ActiveRecord::Base
  belongs_to :bike
  mount_uploader :photo, PhotoUploader
end
