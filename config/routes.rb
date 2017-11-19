Rails.application.routes.draw do

  devise_for :users
  # define root url
  root 'pages#index'

  get '/home' => 'pages#home'

  get '/garage-list' => 'pages#garage-list'

  get '/garage-feed' => 'pages#garage-feed'

  get '/profile' => 'pages#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
