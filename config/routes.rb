Rails.application.routes.draw do

  get '/signup', to: 'users#new'
  get 'landing/index'
  
  resources :plants

  root 'landing#index'

end
