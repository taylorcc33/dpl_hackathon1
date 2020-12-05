class AddressesController < ApplicationController
  before_action :get_location
  before_action :set_address, only: [:show, :edit, :update]
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
    if @appointment.update(appointment_params)
      redirect_to location_address_path(@location, @appointment)
    else
      render :edit
    end
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
