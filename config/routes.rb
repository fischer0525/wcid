Rails.application.routes.draw do
  devise_for :users

  resources :events

  resources :homes

  resources :abouts

  resources :contacts

  namespace :api do
    namespace :v1 do
      resources :events
    end
  end

  root 'homes#index'
end
