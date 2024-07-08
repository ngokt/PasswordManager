Rails.application.routes.draw do
  namespace :admin do
    resources : users
  end
  root to: 'passwords#index'
  resources :passwords
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
