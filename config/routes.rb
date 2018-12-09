Rails.application.routes.draw do
  get '/actors', to: 'actors#index', as: "actors"
  get '/actors/new', to: 'actors#new', as: "new_actor"
  post "/actors", to: "actors#create"
end
