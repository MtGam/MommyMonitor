Rails.application.routes.draw do


  #get 'sessions/new'

  root 'home#index'

  resources :users
  resources :users, only: [:show, :new, :create]
  resources :comments

  resources :sessions, only: [:new, :create, :destroy]


  get 'doc_admin' => 'doc_admin#index'
  controller :session do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end


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
=======

>>>>>>> b4680549a28b3eeeed82d667b67ee06423430e42


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
