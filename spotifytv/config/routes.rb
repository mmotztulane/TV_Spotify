Rails.application.routes.draw do
  resources :genres
  devise_for :logins
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  root :to => redirect('/movies')
  get "settings", to: "settings#index"
  resources :accounts
  resources :movies
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end