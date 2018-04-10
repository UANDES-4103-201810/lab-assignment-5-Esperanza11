Rails.application.routes.draw do
  POST "/tickets", to: "tickets#create"

  DELETE "/tickets", to: "tickets#destroy"

  PATCH "/tickets", to: "tickets#update"

  POST "/events", to: "events#create"

  DELETE "/events", to: "events#destroy"

  PATCH "/events", to: "events#update"

  POST "/places", to: "places#create"

  DELETE "/places", to: "places#destroy"

  PATCH "/places", to: "places#update"

  POST "/users", to: "users#create"

  DELETE "/users", to: "users#destroy"

  PATCH "/users", to: "users#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
