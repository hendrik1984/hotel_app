Rails.application.routes.draw do
  resources :profiles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Root
  root to: "home#index"

  # List Resources
  resources :hotels
  resources :user_managements

  # Devise
  devise_for :users

  # Specific page
  post 'search', to: 'hotels#search'
  get 'dashboard', to: 'home#dashboard'
end
