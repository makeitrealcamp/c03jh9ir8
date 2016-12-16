Rails.application.routes.draw do

  get 'actors', to: 'actors#index'
  get 'actors/new', to: 'actors#new', as: 'new_actor'
  get 'actors/:id', to: 'actors#show'
  post 'actors', to: 'actors#create'
  # resources :actors

  # get 'actors', to: 'actors#index'
  # get 'actors/new', to: 'actors#new', as: 'new_actor'
  # get 'actors/:id', to: 'actors#show', as: 'actor'
  # post 'actors', to: 'actors#create'
end