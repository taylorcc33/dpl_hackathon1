Rails.application.routes.draw do
  # get 'static/home'
  # get 'static/about'
  devise_for :users
  # get “static/home”, to: 'static#home'
  root 'static#home'

  resources :users do
    resources :trips
  end

  resources :trips do
    resources :locations
  end

  resources :trips do
    resources :reviews
  end

  resources :locations do
    resources :address
  end
end
