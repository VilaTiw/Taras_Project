Rails.application.routes.draw do
  resources :profiles, only: %i[index]
  resources :users, only: %i[new create]
  resource :session, only: %i[new create destroy]


end
