class BrandBikesController < ApplicationController
  before_action :set_brand_bike, only: [:show, :edit, :update, :destroy]

  # GET /brand_bikes
  # GET /brand_bikes.json
  def index
    @brand_bikes = Brand.find(params[:brand_id]).bikes
  end

  # GET /brand_bikes/1
  # GET /brand_bikes/1.json
  def show
  end

  # GET /brand_bikes/new
  def new
    @brand_bike = BrandBike.new
  end

  # GET /brand_bikes/1/edit
  def edit
  end

  # POST /brand_bikes
  # POST /brand_bikes.json
  def create
    @brand_bike = BrandBike.new(brand_bike_params)

    respond_to do |format|
      if @brand_bike.save
        format.html { redirect_to @brand_bike, notice: 'Brand bike was successfully created.' }
        format.json { render :show, status: :created, location: @brand_bike }
      else
        format.html { render :new }
        format.json { render json: @brand_bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brand_bikes/1
  # PATCH/PUT /brand_bikes/1.json
  def update
    respond_to do |format|
      if @brand_bike.update(brand_bike_params)
        format.html { redirect_to @brand_bike, notice: 'Brand bike was successfully updated.' }
        format.json { render :show, status: :ok, location: @brand_bike }
      else
        format.html { render :edit }
        format.json { render json: @brand_bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brand_bikes/1
  # DELETE /brand_bikes/1.json
  def destroy
    @brand_bike.destroy
    respond_to do |format|
      format.html { redirect_to brand_bikes_url, notice: 'Brand bike was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand_bike
      @brand_bike = BrandBike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_bike_params
      params[:brand_bike]
    end
end
