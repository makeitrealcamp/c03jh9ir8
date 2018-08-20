Rails.application.routes.draw do
  
  get '/', to: 'actors#index'
  get 'actors/new', to: 'actors#new', as: 'new_actor'
  post '/actors', to: 'actors#create'

end
