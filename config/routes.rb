Rails.application.routes.draw do
  devise_for :users
  root 'product_manegements#index'
  
  get 'product_manegements/age'
  # get 'product_manegements/new'
  get 'sales/new'
  resources :product_manegements
end
