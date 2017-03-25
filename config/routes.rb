Rails.application.routes.draw do
  get '/actors', to: 'actors#index'
  get '/actors/new', to: 'actors#new', as: 'new_actor'
  post 'actors/new', to: 'actors#create'
end
