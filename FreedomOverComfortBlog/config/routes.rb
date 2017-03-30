Rails.application.routes.draw do

  root 'homepage#home'

  resources :users
  resources :posts


  #default route
  get '/:user(/:random)' => 'users#static'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
