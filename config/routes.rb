Rails.application.routes.draw do
  resources :users, :games, :comments
  root :to => 'users#index'

end
