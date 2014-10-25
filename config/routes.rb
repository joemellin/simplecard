Rails.application.routes.draw do

  get 'card_viewer/get'

 	get 'api/projects/', :to =>'api#index' 

  get 'api/projects/:project_id', :to  =>'api#show'

  get 'api/projects/:project_id/cards/:card_id', :to => 'api#card'

  resources :projects do
  	resources :cards
  end



  root to: 'visitors#index'
  devise_for :users
  resources :users
end
