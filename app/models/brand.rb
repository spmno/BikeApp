class Brand < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
end
