Rails.application.routes.draw do
  root 'welcome#index'
  get '/', to: 'welcome#index'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'
  get '/signup', to: 'users#new'
  post 'signup', to: 'users#create'

  resources :users do
    resources :comments
  end

  resources :games do
    resources :comments
    collection do
      get 'search'
    end
  end
end
