class VehiclesController < ApplicationController

    def index
        vehicles = Vehicles.all
        render json: vehicles
    end
end
