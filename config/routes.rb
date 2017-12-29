Rails.application.routes.draw do
  devise_for :users
  get "users/sign_up"
  get "users/sign_in"
  resources :products
  
  get 'pages/about'
  get 'pages/contact'
  
  get 'product' => "products#index"
  
  get 'seller' => "products#seller"

  root "pages#welcome"
end
