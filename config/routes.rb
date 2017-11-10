Rails.application.routes.draw do
  resources :actors

  get 'welcome/index'
end
