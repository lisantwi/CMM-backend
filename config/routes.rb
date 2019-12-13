Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
      resources :projects, only: [:index, :create]
      resources :customers, only: [:index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      post '/signup', to: 'users#create'
    end
  end
end
