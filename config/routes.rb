Rails.application.routes.draw do
  
  # define root url
  root 'pages#index'

  get '/home' => 'pages#home'

  get '/garage-listings' => 'pages#garage-listings'

  get '/profile' => 'pages#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
