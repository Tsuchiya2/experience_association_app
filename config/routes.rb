Rails.application.routes.draw do
  root to: 'homes#index'
  resources :posts
  devise_for :users
end
