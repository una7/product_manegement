Rails.application.routes.draw do
  devise_for :users
  root 'product_manegements#index'
  
  resources :product_manegements, only:[:show, :new, :create, :destroy, :edit, :update] do
    collection do
      get 'registration'
      scope "/product_manegements" do
        get '/:id/sold', to: "product_manegements#sold", as: "sold"
      end
    end
  end

  get 'sales/new'
  get 'sales/index'
  get 'ages/index'
  get 'ages/search'
  resources :ages
  
end
