Rails.application.routes.draw do

  get 'sessions/new'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'landing/index'
  
  resources :plants
  resources :users

  root 'landing#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
