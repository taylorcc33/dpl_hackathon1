Rails.application.routes.draw do
  # get 'static/home'
  # get 'static/about'
  devise_for :users
  # get “static/home”, to: 'static#home'
  root 'static#home'
end
