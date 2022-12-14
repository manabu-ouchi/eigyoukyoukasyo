Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  get '/posts/genre/:id', to: "posts#genre"
  resources :users, only: :show
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  resources :records, only: [:index, :new, :create]
  get '/questions/genre/:id', to: "questions#genre"
  resources :questions do
    resources :answers, only: [:create, :destroy]
  end

  resources :posts, expect: [:index] do
    resource :favorites, only: [:create, :destroy]
  end

  resources :favorites, only: [:index]
end
