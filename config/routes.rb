Rails.application.routes.draw do

  root 'home#index'

  resources :users, only: [:show, :new, :create]
  resources :comments

  resources :sessions, only: [:new, :create, :destroy]





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
