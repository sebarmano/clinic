Rails.application.routes.draw do
  resources :assignments
  resources :vehicles
  resources :customers

  root "customers#index"
end
