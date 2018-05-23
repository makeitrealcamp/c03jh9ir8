Rails.application.routes.draw do
  resources :actors
  root to: 'actors#index'
end
