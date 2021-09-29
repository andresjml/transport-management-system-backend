class RoutesController < ApplicationController

    def index
        routes = Route.all
        render json: routes
    end

    def show
        route= find_route
        render json:route
    end
    

    private

    def find_route
        Route.find(params[:id])
    end
end
