Rails.application.routes.draw do
  
  devise_for :users
  root "scraps#index"
  
  resources :scraps
end
