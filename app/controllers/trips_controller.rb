class TripsController < ApplicationController

    def index
        trips = Trips.all
        render json: trips
    end
end
