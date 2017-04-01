class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
   @trip = Trip.find(params[:id])
 end
 def new
   @trip = Trip.new
 end

 def create
   @trip = Trip.create(trip_params.merge(user: current_user))
   redirect_to root_path
 end

 def edit
   @trip = trip.find(params[:id])
 end

 def update
   @trip = Trip.find(params[:id])
   if @trip.user == current_user
       @trip.update(trip_params)
   else
     flash[:alert] = "Only the creater can edit"
   end

   redirect_to trip_path(@trip)
 end

 def destroy
   @trip = Trip.find(params[:id])
   if @trip.user == current_user
   @trip.destroy
 else
   flash[:alert] = "Only the owner of this trip can delete"
 end
   @trip.destroy

   redirect_to root_path
 end

 private
 def trip_params
   params.require(:trip).permit(:location, :time_span, :photo_url)
 end

end
