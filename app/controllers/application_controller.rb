class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    def logged_in?
        !!session[:name]
    end

    def current_user
        @traveler = (Traveler.find_by_id(params[:id]) || Traveler.new)
    end

    def require_logged_in
        return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end

end
