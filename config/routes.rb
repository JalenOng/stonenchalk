Rails.application.routes.draw do

  devise_for :users
  get 'static_pages/Home'
  get 'static_pages/graph'

  resources :results
  
  root 'results#index'

  resources :companies, only: ["index"]

end
