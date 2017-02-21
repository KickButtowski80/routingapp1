Rails.application.routes.draw do
  
  namespace :admin do 
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end
  
  get 'about-me', to: 'pages#about'
  get 'about-me/*missing', to: 'pages#missing'
  
  get 'leadgen/advertising/ladingpage/lead', to: 'pages#contact', as: 'lead'

  resources :blogs
  resources :posts, except: [:show]
  
  
  get 'posts/*missing', to: 'posts#missing'
  
  get 'query/:else/:another_one', to: 'pages#something'
  
  root to: 'pages#home'
   
end
