Rails.application.routes.draw do
  resources :comments, only: [:index, :show, :create]
  resources :tags, only: [:index, :show]
  resources :pictures, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  
  get "/signup", to: "users#new", as: :signup
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  #get 'users/:id/edit', to: 'users#edit', as: :edit_user
  #patch '/users/:id', to: 'users#update'
  #delete '/users/:id', to: 'users#destroy', as: :delete_user
  #get 'pictures/:id/edit', to: 'pictures#update', as: :edit_picture
  patch '/picture/:id', to: "pictures#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end