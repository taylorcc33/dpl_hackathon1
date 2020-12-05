class ReviewsController < ApplicationController
  before_action :set_trip

  def index
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = @trip.reviews.new(review_params)
    if @review.save
      redirect_to user_trip_path(@trip.user_id, @trip)
    else
      render :new
    end
  end

  def edit
  end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def review_params
    params.require(:review).permit(:title, :body, :score)
  end
end
