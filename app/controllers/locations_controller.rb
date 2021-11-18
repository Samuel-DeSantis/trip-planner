class LocationsController < ApplicationController

    def index
        @locations = Location.all
    end

    def new
        @location = Location.new
    end

    def create
        if Location.create(location_params)
            redirect_to locations_path
        else
            render :new
        end
    end

    def show
        @location = Location.find_by_id(params[:id])
    end

    def edit
        @location = Location.find_by_id(params[:id])
    end

    def update
        @location = Location.find_by_id(params[:id])
        @location.update(location_params)
        
        redirect_to locations_path
    end

    def destroy
        location = Location.find_by_id(params[:id])
        location.trips.each { |trip| trip.destroy }
        location.destroy
        
        redirect_to locations_path
    end

    private

    def location_params
        params.require(:location).permit(:city, :country_id)
    end

end