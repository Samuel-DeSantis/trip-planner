class SessionsController < ApplicationController

    skip_before_action :verify_authenticity_token, only: :create

    def create
        session[:name] = auth['info']['name']

        @traveler = Traveler.find_or_create_by(uid: auth['uid'])
        @traveler.name = auth['info']['name']

        redirect_to root_path
    end

    def destroy
        reset_session

        redirect_to '/'
    end

    private

    def auth
        request.env['omniauth.auth']
    end

end