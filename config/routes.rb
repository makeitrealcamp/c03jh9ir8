Rails.application.routes.draw do

get '/actors', to: 'actors#index'
get '/new', to: 'actors#new'
post '/actors', to: 'actors#create'

end
