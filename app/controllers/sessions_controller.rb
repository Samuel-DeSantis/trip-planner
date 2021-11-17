class SessionsController < ApplicationController

    skip_before_action :verify_authenticity_token, only: :create

    def new
        @traveler = Traveler.new
    end

    def create
        @traveler = Traveler.find_by(traveler_params(:username))
        return head(:forbidden) unless @traveler.authenticate(params[:traveler][:password])
        
        session[:id] = @traveler.id
        session[:username] = @traveler.username
        
        redirect_to traveler_path(@traveler)
    end

    def destroy
        reset_session
        redirect_to root_path
    end

    private

    def traveler_params(*args)
        params.require(:traveler).permit(*args)
    end

end