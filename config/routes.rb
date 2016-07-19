Rails.application.routes.draw do
  #get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  resources :comments

  root 'home#home'

  get 'doc_admin' => 'doc_admin#index'
  controller :session do
    get 'login' => new
    post 'login' => :create
    delete 'logout' => :destroy
  end


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
