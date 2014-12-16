class Brand < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :bikes
end
