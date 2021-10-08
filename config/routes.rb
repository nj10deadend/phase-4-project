Rails.application.routes.draw do
  
  resources :options
  resources :user_scripts
  resources :scripts, only: [:index, :create]
  resources :users, only: [:index, :show, :update, :create, :destroy]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
