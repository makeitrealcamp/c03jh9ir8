Rails.application.routes.draw do

  get '/actors', to: 'actors#index'
  get '/actors/new', to: 'actors#new', as: 'new_actors'
  post '/actors', to: 'actors#create'


end
