Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :update, :create, :destroy]
  resources :pizzas, only: [:index, :update, :show, :create, :destroy]
  resources :restaurant_pizzas, only: [:index, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
