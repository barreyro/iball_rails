Rails.application.routes.draw do
  resources :users, :games, :comments
  root :to => 'users#index'
  post '/logout' => 'sessions#logout'
  post '/login' => 'sessions#login'

end
