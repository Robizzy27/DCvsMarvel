Rails.application.routes.draw do


  resources :publishers
  resources :directors
  resources :movies
  resources :actors

  root to: "movies#index"

end
