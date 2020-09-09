Rails.application.routes.draw do
  # get 'users/index'
  resources :users
  resources :costumes
  resources :user_costumes
end
