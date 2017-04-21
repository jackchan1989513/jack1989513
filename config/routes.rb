Rails.application.routes.draw do
  resources :internal_informations
  resources :access_logs
  resources :move_in_or_outs
  resources :companies
  resources :tickets
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
