Rails.application.routes.draw do
  # mount actually tells the app that another application (usually a Rack application) exists on that location.
  # Mounting an engine means that the functionality from that engine is available inside your application.
  require "sidekiq/web"
  mount Sidekiq::Web => "/sidekiq"

  resources :comments
  resources :users
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "welcome/home", to: "welcome#home"
  get "welcome/about", to: "welcome#about"

  # get 'pages/home', to: 'pages#home'
  # get 'pages/about', to: 'pages#about'

  # To make this the default homepage
  root "pages#home"
  get "about", to: "pages#about"
end
