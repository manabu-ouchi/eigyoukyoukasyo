Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  get '/posts/genre/:id', to: "posts#genre"
  resources :posts
  resources :records, only: [:index, :new, :create]
  resources :users, only: :show
end
