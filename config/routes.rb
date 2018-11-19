Rails.application.routes.draw do

  devise_for :users
  get 'static_pages/Home'

  resources :results
  
  root 'results#index'

end
