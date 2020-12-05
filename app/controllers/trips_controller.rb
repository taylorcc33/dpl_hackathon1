class TripsController < ApplicationController
  before_action :set_user
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  
  def index
    @trips = @user.trips
  end

  def show
    
  end

  def new
    @trip = @user.trips.new
  end

  def create
    @trip = @user.trips.new(trip_params)

    if @trip.save
      redirect_to [@user, @trip]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @trip.update(trip_params)
      redirect_to [@user, @trip]
    else
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to root_path
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_trip
      @trip = Trip.find(params[:id])
    end

    def trip_params
      params.require(:trip).permit(:name, :description, :user_id)
    end
end
