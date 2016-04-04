Rails.application.routes.draw do
  root to: 'movies#index'

  resources :publishers
  resources :directors
  resources :movies
  resources :actors


end
