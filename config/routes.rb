Rails.application.routes.draw do
  resources :memberships
  resources :users
  resources :meetups

  get '/friends/:id', to: 'users#friends'

  post "/register", to: "users#create"
  post "/login", to: "auth#login"
  post "/logout", to: "auth#logout"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
