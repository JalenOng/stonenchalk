Rails.application.routes.draw do

  get 'static_pages/Home'

  resources :results
  
  root 'results#index'

end
