Rails.application.routes.draw do
  devise_for :users
  resources :products
  
  get 'pages/about'
  get 'pages/contact'
  
  get 'product' => "products#index"
  
  get 'seller' => "products#seller"

  root "pages#welcome"
end
