Rails.application.routes.draw do
  resources :referrals
  mount Ckeditor::Engine => '/ckeditor'
  get 'pages/about'

  get 'pages/contact'
  
  get 'pages/career'
  
  get 'jobs/findjobs'

  get 'about', :to => 'pages#about'
  get 'contact', to: 'pages#contact'
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
  get 'home/index'

 
  root 'jobs#index'
  
  
  
  #get 'referrals/index'
  
  ActiveAdmin.routes(self)
  get '*path', to: 'jobs#index'
  match '*a', :to => 'errors#routing', via: :get

end
