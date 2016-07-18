Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/new'

  get 'comments/show'

  get 'comments/create'

  get 'comments/edit'

  # get 'users/index'
  #
  # get 'users/new'
  #
  # get 'users/show'
  #
  # get 'users/edit'

resources :users

root to: 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
