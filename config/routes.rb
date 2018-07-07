Rails.application.routes.draw do
  root 'users#new'
  resources :users, only: [:new, :create, :show]
  resources :questions, only: [:show]
  resources :answers, only: [:create]
end
