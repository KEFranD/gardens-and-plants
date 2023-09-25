Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#home'
  get 'gardens', to: 'gardens#index'
  get 'gardens/new', to: 'gardens#new'
  post 'gardens', to: 'gardens#create'
  get 'gardens/:id', to: 'gardens#show', as: :garden
  get 'gardens/:id/edit', to: 'gardens#edit', as: :edit_garden
  patch 'gardens/:id', to: 'gardens#update'
  delete 'gardens/:id', to: 'gardens#destroy'
end
