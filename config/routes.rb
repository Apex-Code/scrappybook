Rails.application.routes.draw do
  
  root "scraps#index"
  
  resources :scraps
end
