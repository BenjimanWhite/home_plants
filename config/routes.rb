Rails.application.routes.draw do

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'landing/index'
  
  resources :plants
  resources :users

  root 'landing#index'

end
