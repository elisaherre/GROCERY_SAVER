Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "products/my_products", to: "products#my_products", as: "my_products"
  # get "products/:category", to: "products#category", as: "category"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products
end
