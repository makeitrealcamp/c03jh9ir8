Rails.application.routes.draw do

  get 'actors', to: 'actors#index'
  get 'actors/:id', to: 'actors#show'

end