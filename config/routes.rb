Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # delete "restaurants/:id", to: "restaurants#destroy"

  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"

  # get "restaurants/:id/edit", to: "restaurants#edit"
  # patch "restaurants/:id", to: "restaurants#update"

  # get "/restaurants", to: "restaurants#index", as: "all_restaurants"
  # get "/restaurants/:id", to: "restaurants#show", as: "restaurant"

  resources :restaurants
end
