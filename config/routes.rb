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
  
  resources :sales, only:[:index, :show, :destroy, :edit, :update] do
    collection do
      scope '/sales' do
        get '/:id/new', to: 'sales#new', as: 'new'
      end
      scope '/sales' do
        post '/:id/create', to: 'sales#create', as: 'create'
      end
    end
  end
  resources :ages,only:[:index] do
    collection do
      get 'ages/search'
    end
  end
end
