Rails.application.routes.draw do

  get 'card_viewer/get'

  resources :cards

  resources :projects


  root to: 'visitors#index'
  devise_for :users
  resources :users
end
