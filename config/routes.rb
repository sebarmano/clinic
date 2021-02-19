Rails.application.routes.draw do
  resources :vehicles
  resources :customers

  root "customers#index"
end
