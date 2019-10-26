Rails.application.routes.draw do
  root 'product_manegements#product_manegement'
  # root 'product_manegements#index'
  # get 'product_manegements/index' 
  
  
  resources :product_manegements
end
