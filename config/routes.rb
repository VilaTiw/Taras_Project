Rails.application.routes.draw do
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :profiles, only: %i[index]
  resources :users, only: %i[index]
  # resource :session, only: %i[new create destroy]
  resources :main, only: %i[index]
  resources :markets, only: %i[index]
  resources :about, only: %i[index]

  root to: 'main#index'
end
