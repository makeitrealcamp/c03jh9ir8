Rails.application.routes.draw do

  get '/actors', to: 'actors#index'

  get '/actors/new'

  post '/actors', to: 'actors#create'

  get '/new_actor_path', to: 'actors#new' 

end

	