Rails.application.routes.draw do

  resources :genres, only: [:show]

  resource :about, only: [:show], controller: 'about'

  resources :words, only: [:show], controller: 'words'

  root 'home#show'


end
