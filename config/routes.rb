Rails.application.routes.draw do
  resources :deals
  resources :jobs
  root 'static#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
