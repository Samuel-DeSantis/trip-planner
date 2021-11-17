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
        Trip.create(trip_params)
        redirect_to trips_path
    end

    def edit
    end

    def update
    end

    private

    def get_traveler
        @traveler = Traveler.find_by_id(params[:id])
    end

    def trip_params
        params.require(:trip).permit(:traveler_id, :location_id)
    end

end