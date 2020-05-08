Rails.application.routes.draw do
  resources :memberships
  resources :users
  resources :meetups
  resources :friendships

  post '/friendshps', to: 'friendships#create'
  get '/friends/:id', to: 'users#friends'
  get '/notfriends/:id', to: 'users#notfriends'
  get '/search/', to: 'yelp#search'
  get '/meetupsearch/', to: 'yelp#yelpSearch'

  post "/register", to: "users#create"
  post "/login", to: "auth#login"
  get "/autologin", to: "auth#autologin"
  post "/logout", to: "auth#logout"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end