Rails.application.routes.draw do
  
  resources :murals

  root 'murals#index'
end
