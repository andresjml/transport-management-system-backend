Rails.application.routes.draw do
  resources :trips
  resources :vehicles
  resources :transport_companies
  resources :orders
  resources :clients
  resources :routes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
