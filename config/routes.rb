Rails.application.routes.draw do

  resources :genres, only: [:show]

  resource :about, only: [:show], controller: 'about'

  root 'home#show'


end
