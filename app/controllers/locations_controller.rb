class LocationsController < ApplicationController
  before_action :set_trip
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
      # sign in with user, then go to a trip, then you'll see the locations. So I can currect_user.trips.locations.all
      @locations = @trip.locations
  end

  def show
  end

  def new
    @location = @trip.location.new
  end

  def create
    @location = @trip.location.new(location_params)

      if @location.save
        redirect_to @locations
      else 
        render :new
      end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to @trip
  end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
    ## or @trip = current_user.trip(params[:id])
  end

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :description, :type)
  end
end
