Rails.application.routes.draw do


  root 'homepage#home'

  resources :users
  #currently no need for users
  resources :posts
  resources :comments

  #default route222
  get '/:user(/:random)' => 'users#static'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
