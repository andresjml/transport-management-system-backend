Rails.application.routes.draw do
  resources :trips, only: [:index, :show, :create, :update, :destroy]
  resources :vehicles, only: [:index, :show, :create, :update, :destroy]
  resources :transport_companies, only: [:index, :show, :create, :update, :destroy]
  resources :orders, only: [:index, :show]
  resources :clients, only: [:index, :show]
  resources :routes, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
