Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/about'
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  resources :articles
end
