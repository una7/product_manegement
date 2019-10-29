Rails.application.routes.draw do
  devise_for :users
  root 'product_manegements#index'
  # get 'product_manegements/new'
  get 'product_manegements/sales'
  get 'product_manegements/age'
  # get 'product_manegements/index' 
  
  resources :product_manegements
end
