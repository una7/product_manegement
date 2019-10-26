Rails.application.routes.draw do
  root 'product_manegements#index'
  get 'product_manegements/product_manegement'
  get 'product_manegements/sales'
  get 'product_manegements/age'
  # get 'product_manegements/index' 
  
  resources :product_manegements
end
