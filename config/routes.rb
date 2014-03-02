V1::Application.routes.draw do

  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'create_new_admin' }

  root :to => 'home#index'
  match "works/new" => "works#new" 
  
  resources :abouts
  resources :homeposts
  resources :works
  resources :contacts
  resources :thanks
  resources :links
  resources :cms
  
  match "contacts_xls" => 'cms#contacts_xls'
  
end