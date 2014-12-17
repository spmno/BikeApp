class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]

  respond_to :html
  INPUT_PHOTO_COUNT = 10

  def index
    @bikes = Bike.all
    respond_with(@bikes)
  end

  def show
    respond_with(@bike)
  end

  def new
    @brands = Brand.all
    @bike = Bike.new
    respond_with(@bike)
  end

  def edit
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.save
    respond_with(@bike)
  end

  def update
    @bike.update(bike_params)
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
      params.require(:bike).permit(:name, :summary)
    end
end
