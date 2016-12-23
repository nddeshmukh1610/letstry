Rails.application.routes.draw do
  resources :contacts
  resources :referrals
  mount Ckeditor::Engine => '/ckeditor'
  get 'pages/about'

  
  
  get 'pages/career'
  
  get 'jobs/findjobs'
  
  

  get 'about', :to => 'pages#about'
  
  get 'career', to: 'pages#career'
  get 'findjobs', to: 'jobs#findjobs'
  
  
  
  resources :japprovals
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  resources :jobs
  resources :locations
  resources :genders
  resources :jtypes
  resources :modes
  resources :categories
  resources :pages
  resources :uploads
  resources :contacts
  get 'home/index'

 
  root 'jobs#index'
  
  
  
  
  
  ActiveAdmin.routes(self)
  get '*path', to: 'jobs#index'
  get '*/*path', to: 'jobs#index'
  

end
