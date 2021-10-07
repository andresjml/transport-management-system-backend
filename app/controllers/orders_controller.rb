class OrdersController < ApplicationController
    def index
        orders = Order.all
        render json:orders
    end

    def show
        order= find_order
        render json:order
    end

    def update
        order= find_order
        order.update!(order_params)
        render json:order
    end
      
    
    private
    
    def find_order
        Order.find(params[:id])
    end

    def order_params
        params.permit(:status)
    end
end
