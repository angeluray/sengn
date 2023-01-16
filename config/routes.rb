Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :searches
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :searches
  end
  # Defines the root path route ("/")
  root "searches#index"
end
