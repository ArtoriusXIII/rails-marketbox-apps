Rails.application.routes.draw do
  devise_for :users
  resources :products
  get 'pages/about'

  get 'pages/contact'

  root 'products#index'
end
