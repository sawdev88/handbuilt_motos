Rails.application.routes.draw do
  devise_for :users
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :posts
  resources :relationships
  # define root url
  root 'pages#index'

  get '/home' => 'pages#home'

  get '/user/:id' => 'pages#profile'

  get '/garage-list' => 'pages#garage-list'

  get '/garage-feed' => 'pages#garage-feed'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
