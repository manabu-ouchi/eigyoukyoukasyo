Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  get '/posts/genre/:id', to: "posts#genre"
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  resources :records, only: [:index, :new, :create]
  resources :users, only: :show
  resources :questions
end
