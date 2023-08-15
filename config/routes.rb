Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create]
  resources :books, only: [:index, :show, :create, :destroy]
  resources :users, only: [:show]
  resources :sessons, only: [:create, :destory]

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"

end
