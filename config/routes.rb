Rails.application.routes.draw do

  get '/actors' => 'actors#index'
  get '/actors/new', to: 'actors#new'

end
