Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "products/my_products", to: "products#my_products", as: "my_products"
  get "products/categories/:category", to: "products#category", as: "category"
  get "transactions/shopping_list/", to: "transactions#shopping_list", as: "shopping_list"
  get "transactions/selling_list/", to: "transactions#selling_list", as: "selling_list"
  get "transactions/:id", to: "transactions#show", as: "transaction"
  post "transactions", to: "transactions#create"
  # get "transactions/:id", to: "transactions#show", as: ""
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products
end
