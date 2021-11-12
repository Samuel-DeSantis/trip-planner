class TripsController < ApplicationController

    before_action :get_traveler

    def index
        @trips = @traveler.trips
    end
    
    def show
        @trip = @traveler.trips.find_by_id(params[:id])
    end

    def new
    end

    def create
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
        params.require(:trip).permit(:traveler_id, :location_id, :cost)
    end

end