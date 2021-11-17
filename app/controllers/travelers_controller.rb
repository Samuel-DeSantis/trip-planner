class TravelersController < ApplicationController

    def new
        @traveler = Traveler.new
    end

    def create
        if auth
            @traveler = Traveler.find_or_create_by(username: auth['info']['nickname'])
            @traveler.password = auth['uid']
            @traveler.save

            session[:id] = @traveler.id
            session[:username] = @traveler.username

            redirect_to traveler_path(@traveler)
        else
            @traveler = Traveler.create(traveler_params)

            session[:id] = @traveler.id
            session[:username] = @traveler.username

            redirect_to traveler_path(@traveler)
        end
    end

    def show
        @traveler = Traveler.find_by_id(params[:id])
    end

    private

    def auth
        request.env['omniauth.auth']
    end

    def traveler_params
        params.require(:traveler).permit(:username, :password, :password_confirmation)
    end

end