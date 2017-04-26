Rails.application.routes.draw do
  resources :deliveries
  resources :customers
  resources :rack_in_halls
  resources :can_not_move_outs
  resources :vendor_lists
  resources :internal_informations
  resources :access_logs
  resources :move_in_or_outs
  resources :companies
  resources :tickets
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
