class TripsController < ApplicationController

    before_action :get_traveler

    def index
        @trips = Trip.all.filter { |t| t.traveler_id == session[:id] }
    end
    
    def show
        @trip = @traveler.trips.find_by_id(params[:id])
    end

    def new
        @trip = Trip.new
    end

    def create
        Trip.create(trip_params(:traveler_id, :location_id))

        redirect_to trips_path
    end

    def edit
        @trip = Trip.find_by_id(params[:id])
    end

    def update
        @trip = Trip.find_by_id(params[:id])
        if params[:trip][:date].match('\d\d/\d\d/\d\d\d\d')
            @trip.update(trip_params(:date, :cost))

            redirect_to trips_path
        else
            render :edit
        end  
    end

    def destroy
        trip = Trip.find_by_id(params[:id])
        trip.destroy
        
        redirect_to trips_path
    end

    private

    def get_traveler
        @traveler = Traveler.find_by_id(params[:id])
    end

    def trip_params(*args)
        params.require(:trip).permit(*args)
    end

end