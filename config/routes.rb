Rails.application.routes.draw do
  namespace :client do
    get 'tickets', to: 'tickets#list'
    get 'tickets/:id/', to: 'tickets#show'
    post 'tickets/:id/pick', to: 'tickets#pick'
  end
  devise_for :clients
  resources :ticket_categories
  resources :categories
  resources :tickets
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tickets#index"
end
