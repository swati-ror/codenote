Rails.application.routes.draw do
  resources :attendences
  resources :users
  root 'users#new'
  
  resources :sessions, only: [:new, :create, :login, :logout]  
  get 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#logout'
  get 'check', to: 'sessions#check'
  get 'admin_page', to: 'users#admin_page'
  get 'employee_page', to: 'users#employee_page'
  get 'home', to: 'users#home'
  get 'show_list', to: 'attendences#show_list'
  namespace :admin do
    resources :users
  end
end