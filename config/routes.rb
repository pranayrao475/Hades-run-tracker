Rails.application.routes.draw do
  get "/gods", to: "olympian_gods#index"
  get "/gods/:id/boons", to: "boons#godBoons"
  get "/runlog", to: "runs#index"
  post "/escape", to: "runs#create" 
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
