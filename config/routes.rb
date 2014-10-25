Rails.application.routes.draw do

  get 'card_viewer/get'

  resources :projects do
  	resources :cards
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
