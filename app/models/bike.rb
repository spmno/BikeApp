class Bike < ActiveRecord::Base
  belongs_to :brand
  has_many :bike_photos
  has_many :dealers
  accepts_nested_attributes_for :bike_photos, allow_destroy: true
end
