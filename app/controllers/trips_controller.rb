class TripsController < ApplicationController

    def index
        trips = Trip.all
        render json: trips
    end

    def show
        trip= find_trip
        render json:trip
    end

    def create
        trip=Trip.create!(trip_params)
        render json:trip
    end

    def update
        trip= find_trip
        trip.update!(trip_params)
        render json:trip
    end

    def destroy
        trip= find_trip
        trip.destroy
        head :no_content
    end

    private

    def find_trip
        Trip.find(params[:id])
    end

    def trip_params
        params.permit(:vehicle_id, :order_id, :status)
    end
end
