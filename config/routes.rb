Rails.application.routes.draw do




  root 'home#index'

  resources :users do
    resources :comments
  end  

  resources :sessions, only: [:new, :create, :destroy]


  get 'doc_admin' => 'doc_admin#index'
  controller :session do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
