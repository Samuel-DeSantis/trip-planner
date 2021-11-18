class CountriesController < ApplicationController

    def index
        @countries = Country.all
    end

    def new
    end

    def create
        @country = Country.create(country_params)
    end

    def delete
        Country.find_by_id(params[:id]).destroy
        redirect_to countries_path
    end

    private

    def country_params
        params.require(:country).permit(:name)
    end

end