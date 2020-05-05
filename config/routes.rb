Rails.application.routes.draw do
  resources :memberships
  resources :users
  resources :meetups

  get '/friends/:id', to: 'users#friends'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
