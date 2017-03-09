Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
  get 'actors/index'

  #get 'actors', to: 'actors#index'

  resources :actors
  #resources :actors, only: [:index]
end