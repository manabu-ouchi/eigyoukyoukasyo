Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  get '/posts/genre/:id', to: "posts#genre"
  resources :posts, only: [:index, :new, :create, :show]
end
