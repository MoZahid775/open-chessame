Rails.application.routes.draw do
  
  resources :games
  resources :openings
  resources :users, only: [:create, :index ]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  post "/login", to: 'users#login'
  get "/me", to: "users#me"

end
