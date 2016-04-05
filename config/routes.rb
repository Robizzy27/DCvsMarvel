Rails.application.routes.draw do


  resources :publishers
  resources :directors
  resources :movies
  resources :actors

  root to: "main#index"

end
