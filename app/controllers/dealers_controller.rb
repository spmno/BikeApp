class DealersController < ApplicationController
  before_action :set_dealer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @dealers = Dealer.all
    respond_with(@dealers)
  end

  def show
    respond_with(@dealer)
  end

  def new
    @dealer = Dealer.new
    @bikes = Bike.all
    respond_with(@dealer)
  end

  def edit
    @bikes = Bike.all
  end

  def create
    @dealer = Dealer.new(dealer_params)
    @dealer.save
    respond_with(@dealer)
  end

  def update
    @dealer.update(dealer_params)
    respond_with(@dealer)
  end

  def destroy
    @dealer.destroy
    respond_with(@dealer)
  end

  private
    def set_dealer
      @dealer = Dealer.find(params[:id])
    end

    def dealer_params
      params.require(:dealer).permit(:name, :address, :summary, :bike_id)
    end
end
