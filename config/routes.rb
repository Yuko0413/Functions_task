Rails.application.routes.draw do

  root 'sessions#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

end
