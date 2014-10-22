Rails.application.routes.draw do

  resources :genres, only: [:show]

  resource :about, only: [:show], controller: 'about'

  resources :words, only: [:show]

  resources :movies, only: [:show]

  root 'home#show'


end
