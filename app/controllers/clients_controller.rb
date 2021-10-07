class ClientsController < ApplicationController
    
  def index
    clients = Client.all
    render json: clients.order(id: :asc)
  end

  def show
    client= find_client
    render json:client
  end
  

  private

  def find_client
    Client.find(params[:id])
  end
  
end
