Rails.application.routes.draw do
<<<<<<< HEAD
  #get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
=======
>>>>>>> 4fbe067284fb185e2c01edbfb0dc89b14dd48419

  resources :users
  resources :comments

  resources :sessions, only: [:new, :create, :destroy]


  root 'home#home'

<<<<<<< HEAD
  get 'doc_admin' => 'doc_admin#index'
  controller :session do
    get 'login' => new
    post 'login' => :create
    delete 'logout' => :destroy
  end

=======

  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'
>>>>>>> 4fbe067284fb185e2c01edbfb0dc89b14dd48419

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
