Rails.application.routes.draw do
  resources :tasks
  resources :assignments
  resources :vehicles
  resources :customers

  root "customers#index"
end
