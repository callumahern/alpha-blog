Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'

  resources :articles
end
