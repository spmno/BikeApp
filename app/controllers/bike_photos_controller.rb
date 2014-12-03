class BikePhotosController < ApplicationController
  before_action :set_bike_photo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bike_photos = BikePhoto.all
    respond_with(@bike_photos)
  end

  def show
    respond_with(@bike_photo)
  end

  def new
    @bike_photo = BikePhoto.new
    respond_with(@bike_photo)
  end

  def edit
  end

  def create
    @bike_photo = BikePhoto.new(bike_photo_params)
    @bike_photo.save
    respond_with(@bike_photo)
  end

  def update
    @bike_photo.update(bike_photo_params)
    respond_with(@bike_photo)
  end

  def destroy
    @bike_photo.destroy
    respond_with(@bike_photo)
  end

  private
    def set_bike_photo
      @bike_photo = BikePhoto.find(params[:id])
    end

    def bike_photo_params
      params.require(:bike_photo).permit(:bike_id, :photo)
    end
end
