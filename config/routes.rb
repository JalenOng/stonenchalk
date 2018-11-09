Rails.application.routes.draw do

  resources :results
  
  root 'results#index'

end
