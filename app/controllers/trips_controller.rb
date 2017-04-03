class TripsController < ApplicationController
  def index
    @trips = Trip.all
    render json: @trips
  end

  def show
   @trip = Trip.find(params[:id])
   render json: @trip
 end
 def new
   @trip = Trip.new
 end

 def create
   @trip = Trip.create(trip_params.merge(user: current_user))
   if @trip.save!
     render json: @trip, status: :created
   else
     render json: @message.errors, status: :unprocessable_entity
   end
 end

 def edit
   @trip = trip.find(params[:id])
 end

 def update
   @trip = Trip.find(params[:id])
   if @trip.user == current_user
       @trip.update(trip_params)
       render json: @trip
   else
     render json: @message.errors, status: :unprocessable_entity
   end
 end

 def destroy
   @trip = Trip.find(params[:id])
   if @trip.user == current_user
   @trip.destroy
   render json: {message: "sucess"}, status: :ok
 end


 end

 private
 def trip_params
   params.require(:trip).permit(:location, :time_span, :photo_url)
 end

end
