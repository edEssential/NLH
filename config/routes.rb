V1::Application.routes.draw do

  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  root :to => 'home#index'
  
  resources :abouts
  resources :homeposts
  resources :works
  resources :contacts
  resources :thanks
  
end