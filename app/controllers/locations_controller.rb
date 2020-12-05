class LocationsController < ApplicationController
  before_action :set_trip

  def index
      # sign in with user, then go to a trip, then you'll see the locations. So I can currect_user.trips.locations.all
      @locations = @trip.locations
  end

  def show
    @location = @trip.location.find(params[:id])
  end

  def new
  end

  def edit
  end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
    ## or @trip = current_user.trip(params[:id])
  end
end
