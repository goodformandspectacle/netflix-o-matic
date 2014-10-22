Rails.application.routes.draw do

  resources :genres, only: [:show]

  root 'home#show'


end
