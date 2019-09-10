Rails.application.routes.draw do
  #ToppagesController
  root to: 'tasks#index'
  
  #SessionController
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  
  #UsersController
  get 'signup', to: 'users#new'
  resources :users, only: [:show, :new, :create]
  
  #TasksController
  resources :tasks
  
end
