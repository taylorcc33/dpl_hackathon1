class AddressesController < ApplicationController
  before_action :get_location
  before_action :set_address, only: [:show, :edit, :update, :destroy]
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
    #/locations/:location_id/address/:id/edit(.:format)
  end

  def update
    if @address.update(address_params)
      redirect_to location_address_path(@location, @address)
    else
      render :edit
    end
  end

  def destroy
    @address.destroy
    redirect_to location_address_path(@location)
  end

  private
  def set_address
    @address = Address.find(params[:id])
  end
  def get_location
    @location = Location.find(params[:location_id])
  end
  def address_params
    params.require(:address).permit(:street, :city, :state, :zip, :country, :location_id)
  end
end
