class TransportCompaniesController < ApplicationController

    def index
        transport_companies = TransportCompany.all
        render json: transport_companies
    end
end
