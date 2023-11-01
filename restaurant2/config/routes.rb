#11h23 17 octobre 2023
#Dylan Ducas
Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"
  resources :mesmenus
  resources :businesses
  namespace :admin do
    get "/", to: "home#index"
    resources :businesses
  end
end
