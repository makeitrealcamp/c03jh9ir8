Rails.application.routes.draw do
  resources :actors
  root 'actors#index'
end
