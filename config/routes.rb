Rails.application.routes.draw do
  # get 'articles/index'
  root "articles#index"
  # get "/home", to: "articles#index"
  get "/articles/:id", to: "articles#show" 
  # resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/home" to: "articles#index"
  # Defines the root path route ("/")
end
