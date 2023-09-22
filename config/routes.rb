Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'gardens#home'
  get 'gardens', to: 'gardens#index'
  get 'gardens/new', to: 'gardens#new'
  post 'gardens', to: 'gardens#create'
  get 'gardens/:id', to: 'gardens#show', as: 'garden'
end
