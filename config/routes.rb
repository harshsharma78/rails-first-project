Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'welcome/home', to: 'welcome#home'
  get 'welcome/about', to: 'welcome#about'

  # get 'pages/home', to: 'pages#home'
  # get 'pages/about', to: 'pages#about'
  
  # To make this the default homepage
  root 'pages#home'
  get 'about', to: 'pages#about'

end
 