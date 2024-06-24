Rails.application.routes.draw do
  resources :hotels
  post 'search', to: 'hotels#search'
  devise_for :users
  root to: "home#index"
  get 'dashboard', to: 'home#dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
