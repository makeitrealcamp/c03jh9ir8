Rails.application.routes.draw do
  get '/actors' => 'actors#index'
  get 'actors/new'
  resources :actors
end
