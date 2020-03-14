Rails.application.routes.draw do
  resources :reviews, only: [:index, :destroy]
    root 'hons#index'
    resources :hons do
      resources :reviews, except: [:index, :destroy]
    end
    devise_for :users
  end
