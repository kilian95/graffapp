Rails.application.routes.draw do
  
  resources :murals do
  	resources :images, :only => [:create]
  end
  


  root 'murals#index'
end
