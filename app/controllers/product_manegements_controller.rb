class ProductManegementsController < ApplicationController
  def index 
  end
  
  def new
    @product = Product.new
    # @product = Product.find(params[:id])
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  
  def show
    @ages = Age.all
  end
  
  def age
    @ages = Age.all
    # @ages = Age.where(Age: true)
    # @ages = Age.all
    # @ages = Age.find(params[:id])
    # @ages = Age.find(1)
    # @ages = Age.where('age LIKE(?)',"% #{params[:keyword]}%").limit(5)
    # @ages = Age.find_by_age (age)
    # モデル.find_by_カラム名 (検索する値)
  end

  def search
    @ages = Age.where('age LIKE(?)',"% #{params[:keyword]}%").limit(5)
  end
  
  private
  def product_params
    params.require(:product).permit(:arrival, :successful_bid, :product_name, :product_price, :stock, :unit_price, :shipping_fee, :total_price)
  end
end
