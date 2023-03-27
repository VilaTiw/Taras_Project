Rails.application.routes.draw do
  resources :profiles, only: %i[index]
  resources :users, only: %i[new create index]
  resource :session, only: %i[new create destroy]
  resources :main, only: %i[index]
  resources :markets, only: %i[index]
  resources :about, only: %i[index]

  root to: 'main#index'
end
