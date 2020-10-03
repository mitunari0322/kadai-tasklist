Rails.application.routes.draw do
  #タスク機能
  root to: "tasks#index"
  #resources :tasks, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :tasks, except: [:index]
  
  #ログイン機能
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  #ユーザー登録機能
  get "signup", to: "users#new"
  resources :users, only: [:index, :new, :create]
end