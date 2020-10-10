Rails.application.routes.draw do
  devise_for :users

  root to: 'anks#index'
  resources :anks
  
end
