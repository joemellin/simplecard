Rails.application.routes.draw do

  resources :projects do
  	resources :cards
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
