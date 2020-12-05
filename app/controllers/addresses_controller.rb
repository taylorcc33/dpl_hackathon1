class AddressesController < ApplicationController
  before_action :get_location, only: [:new, :create]

  def index
    @addresses = Adresss.all
  end

  def show
  end

  def new
    @address = Address.new
  end

  def create
    @address = @location.addresses.new(address_params)
    if @address.save
      redirect_to @location
    else
      render :new
    end
  end

  def edit
  end

  private
  def get_location
    @location = Location.find(params[:location_id])
  end
  def address_params
    params.require(:address).permit(:street, :city, :state, :zip, :country, :location_id)
  end
end
