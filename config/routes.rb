Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  root to: 'tasks#index'
  
  get 'signup', to: 'users#new' # /signupで新規登録
  resources :users, only: [:create]
  
  resources :tasks
end
