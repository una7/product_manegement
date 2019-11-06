Rails.application.routes.draw do
  devise_for :users
  root 'product_manegements#index'
  
  get 'product_manegements/age'
  get 'sales/new'
  get 'sales/index'
  
  resources :product_manegements
end
