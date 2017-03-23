Rails.application.routes.draw do
  devise_for :users

  resources :events

  resources :homes
  
  root 'homes#index'
end
