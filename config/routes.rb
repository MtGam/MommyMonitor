Rails.application.routes.draw do

  resources :users
  resources :comments

  resources :sessions, only: [:new, :create, :destroy]


  root 'home#home'


  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'

  # get 'comments/index'
  #
  # get 'comments/new'
  #
  # get 'comments/show'
  #
  # get 'comments/create'
  #
  # get 'comments/edit'

  # get 'users/index'
  #
  # get 'users/new'
  #
  # get 'users/show'
  #
  # get 'users/edit'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
