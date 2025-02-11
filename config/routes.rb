Rails.application.routes.draw do
  root "recipes#index"
  
  get '/recipes', to: "recipes#index"
  get '/recipes/new', to: "recipes#new"
  get '/recipes/:id', to: "recipes#show"
  
  get '/chefs', to: "chefs#index"
  get '/chefs/:id', to: "chefs#show"
  get '/chefs/:id/recipes', to: "chefs#recipes"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
