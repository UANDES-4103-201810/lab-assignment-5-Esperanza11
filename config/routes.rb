Rails.application.routes.draw do
  
  post "/tickets", to: "tickets#create"

  delete "/tickets", to: "tickets#destroy"

  patch "/tickets", to: "tickets#update"

  post "/events", to: "events#create"

  delete "/events", to: "events#destroy"

  patch "/events", to: "events#update"

  post "/places", to: "places#create"

  delete "/places", to: "places#destroy"

  patch "/places", to: "places#update"

  post "/users", to: "users#create"

  delete "/users", to: "users#destroy"

  patch "/users", to: "users#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
