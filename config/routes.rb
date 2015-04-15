Rails.application.routes.draw do
  resources :users, :games, :comments
  root :to => 'users#index'
  get "login", to: "sessions#login"
  post "login", to: "sessions#create_session"
  get "logout", to: "sessions#logout"

  get "signup", to: "users#new", as: "signup"
  post "signup", to: "users#create"

  resources :users do
    resources :events
    resources :friendships
    resources :comments
  end

  resources :lineages
end
