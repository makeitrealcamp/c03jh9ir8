Rails.application.routes.draw do
  root 'actors#index'
  resources :actors, only: [:index,:create,:new]

end
