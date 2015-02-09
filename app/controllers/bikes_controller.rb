class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json
  INPUT_PHOTO_COUNT = 10

  def index
    @bikes = Bike.all
    respond_with(@bikes)
  end

  def show
    @bike_photos = @bike.bike_photos.all
    @bike_dealers = @bike.dealers
    respond_with(@bike)
  end

  def new
    @brands = Brand.all
    @bike = Bike.new
    @bike_photo = @bike.bike_photos.build
    respond_with(@bike)
  end

  def edit
    @brands = Brand.all
    @bike_photos = @bike.bike_photos.all
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.save
    params[:bike_photos]['photo'].each do |photo|
      @bike_photo = @bike.bike_photos.create!(photo: photo, bike_id: @bike.id)
    end
#    print params[:bike]
#    INPUT_PHOTO_COUNT.times do |count|
#      if params[:"bike[#{count}]"] != nil
#        bike_photo = BikePhoto.new
#        bike_photo.bike_id = @bike.id
#        bike_photo.photo = params[:"bike[#{count}]"]
#        bike_photo.save
#      end
#    end

    respond_with(@bike)
  end

  def update
    @bike.update(bike_params)
    if params[:bike_photos]
      @bike.bike_photos.map {|photo| photo.destroy!}
      params[:bike_photos]['photo'].each do |photo|
        @bike_photo = @bike.bike_photos.create!(photo: photo, bike_id: @bike.id)
      end
    end
    respond_with(@bike)
  end

  def destroy
    @bike.destroy
    respond_with(@bike)
  end

  private
    def set_bike
      @bike = Bike.find(params[:id])
    end

    def bike_params
      params.require(:bike).permit(:name, :summary, :brand_id, :price, bike_photos_attributes: [:id, :bike_id, :photo])
    end
end
