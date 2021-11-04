Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  root :to => redirect('/users')
  get "settings", to: "settings#index"
  resources :accounts
  resources :movies
end