Rails.application.routes.draw do
  resources :actors, only: [:index,:create,:new]

end
