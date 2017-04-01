class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
    @activity = Activity.find(@review.activity_id)
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @review = @activity.reviews.new

  end

  def create
    @activity = Activity.find(params[:activity_id])

    @activity = Activity.find(@activity.activity_id)
    @trip = Trip.find(@activity.trip_id)
   @activity.reviews.create(review_params.merge(user: current_user))

    redirect_to trip_activity_path(@trip, @activity)
end

def edit
    @review = Review.find(params[:id])
    @activity = Activity.find(params[:activity_id])


  end

  # update
  def update
    @review = Review.find(params[:id])

    @activity = activity.find(params[:activity_id])
    @activity = activity.find(@activity.activity_id)
    if @review.user == current_user
      @review.update(review_params)
    else
      flash[:alert] = "Only the author of the review can edit"
    end
    redirect_to activity_path(@activity)
  end

  # destroy
  def destroy
    @review = Review.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    @activity = Activity.find(@activity.activity_id)
    if @review.user == current_user
    @review.destroy
  else
    flash[:alert] = "Only the author of the review can delete"
  end

  redirect_to activity_path(@activity)
  end

private

def review_params
  params.require(:review).permit(:rating, :comment)
end

end
