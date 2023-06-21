Rails.application.routes.draw do
  
  # sessions
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "users#create"

  resources :reactions, only: [:create, :show, :destroy]
  resources :messages
  resources :groups, only: [:index, :show]
  resources :users, only: :index
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
