class VehiclesController < ApplicationController

    def index
        vehicles = Vehicle.all
        render json: vehicles
    end

    def show
        vehicle= find_vehicle
        render json:vehicle
    end

    def create
        vehicle=Vehicle.create!(vehicle_params)
        render json:vehicle
    end

    def update
        vehicle= find_vehicle
        vehicle.update!(vehicle_params)
        render json:vehicle
    end

    def destroy
        vehicle= find_vehicle
        vehicle.destroy
        head :no_content
    end

    private

    def find_vehicle
        Vehicle.find(params[:id])
    end

    def vehicle_params
        params.permit(:v_type, :capacity, :transport_company_id)
    end
end
