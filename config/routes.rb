V1::Application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: "login" }

  root :to => 'home#index'
  
  resources :abouts
  resources :homeposts
  resources :works
  resources :contacts
  resources :thanks
  
end