Rails.application.routes.draw do
  devise_for :users

  root to: 'anks#index'
  resources :anks do
    resources :answers
  end
  
end
