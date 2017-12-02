Rails.application.routes.draw do

  get '/actors', to: 'actors#index'

  get '/actors/new'

  post '/actors', to: 'actors#create'

  get '/actors', to: 'actors#index' 

end

	