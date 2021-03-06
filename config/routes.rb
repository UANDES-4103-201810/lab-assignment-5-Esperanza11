Rails.application.routes.draw do

  get "/tickets/:id", to: "tickets#show"

  post "/tickets", to: "tickets#create"

  delete "/tickets/:id", to: "tickets#destroy"

  patch "/tickets/:id", to: "tickets#update"

  get "/events/:id", to: "events#show"

  post "/events", to: "events#create"

  delete "/events/:id", to: "events#destroy"

  patch "/events/:id", to: "events#update"

  get "/places/:id", to: "places#show"

  post "/places", to: "places#create"

  delete "/places/:id", to: "places#destroy"

  patch "/places/:id", to: "places#update"

  get "/users/:id", to: "users#show"

  post "/users", to: "users#create"

  delete "/users/:id", to: "users#destroy"

  patch "/users/:id", to: "users#update"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
