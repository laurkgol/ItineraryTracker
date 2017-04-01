class ActivitiesController < ApplicationController
  def index
    @activitys = Activity.all

  end
  def new
      @trip = Trip.find(params[:trip_id])
      @activity = @trip.activities.new
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @activity = @trip.activities.create!(activity_params.merge(user: current_user))
    redirect_to trip_activity_path(@trip, @activity)
  end

  def show
    @activity = Activity.find(params[:id])
    @trip = Trip.find(@activity.trip_id)
end

  def edit
    @activity = Activity.find(params[:id])
    @trip = Trip.find(params[:trip_id])
  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.user == current_user
        @activity.update(activity_params)
    else
      flash[:alert] = "Only the creater can edit"
    end

    redirect_to trip_activity_path(@activity)
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @activity = Activity.find(params[:id])


    if @activity.user == current_user
    @activity.destroy
  else
    flash[:alert] = "Only creater delete"
  end
    redirect_to trip_path(@trip)
  end

private

def activity_params
  params.require(:activity).permit(:date, :title, :description, :photo_url)
end

end
