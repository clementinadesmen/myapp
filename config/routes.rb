Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/contact', to: 'contacts#new'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :contacts, only: [:new, :create]
  resources :users
end
