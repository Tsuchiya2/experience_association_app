Rails.application.routes.draw do
  root to: 'homes#index'
  resources :posts
  resources :tasks
  devise_for :users
end
