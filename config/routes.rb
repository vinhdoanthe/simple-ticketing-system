Rails.application.routes.draw do
  # namespace :users do
  #   get 'omniauth_callbacks/google_auth2'
  # end
  resources :ticket_categories
  resources :categories
  resources :tickets
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tickets#index"
end
