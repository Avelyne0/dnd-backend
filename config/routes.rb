Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
          resources :users, only: [:create, :show]
          resources :characters, only: [:create, :show, :index, :destroy]
          post '/login', to: 'auth#create'
          get '/validate', to: 'auth#validate_token'
      end
  end
end
