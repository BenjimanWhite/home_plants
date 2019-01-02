Rails.application.routes.draw do

  get 'landing/index'
  
  resources :plants

  root 'landing#index'

end
