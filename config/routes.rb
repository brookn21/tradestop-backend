Rails.application.routes.draw do
  resources :likes
  resources :shoes, only: [:index, :show]
  resources :reviews
  resources :listings
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/login', to: 'sessions#create'
  post '/profile',  to: 'users#profile'

end
