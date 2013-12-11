V1::Application.routes.draw do

  root :to => 'home#index'
  
  resources :abouts
  resources :homeposts
  resources :works
  
end