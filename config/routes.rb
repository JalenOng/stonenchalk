Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  get 'static_pages/Home'
  get 'static_pages/graph'

  resources :results
  
  root 'results#index'

  resources :companies, only: ["index"]

end
