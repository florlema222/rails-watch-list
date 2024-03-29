Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:new, :create, :show, :destroy] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: [:destroy]
end
