Rails.application.routes.draw do
  devise_for :users

  resources :events do
    resources :user_events
  end

  root 'events#index'
end
