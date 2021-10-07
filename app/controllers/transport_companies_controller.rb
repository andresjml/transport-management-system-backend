class TransportCompaniesController < ApplicationController

    def index
        transport_companies = TransportCompany.all
        render json: transport_companies.order(id: :asc)
    end

    def show
        transport_company= find_transport_company
        render json:transport_company
    end

    def create
        transport_company=TransportCompany.create!(transport_company_params)
        render json:transport_company
    end

    def update
        transport_company= find_transport_company
        transport_company.update!(transport_company_params)
        render json:transport_company
    end

    def destroy
        transport_company= find_transport_company
        transport_company.destroy
        head :no_content
    end

    private

    def find_transport_company
        TransportCompany.find(params[:id])
    end

    def transport_company_params
        params.permit(:name)
    end
end
