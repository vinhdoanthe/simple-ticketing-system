Rails.application.routes.draw do
  resources :ticket_categories
  resources :categories
  resources :tickets
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tickets#index"
end
