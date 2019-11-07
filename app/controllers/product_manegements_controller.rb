class ProductManegementsController < ApplicationController
  def index 
  end
  
  def new
    @product = Product.new
  end
  
  def create
    # binding.pry
    @product = Product.new(product_params)
    if @product.save
      redirect_to registration_product_manegements_path
    else
      render :new
    end
  end
  
  def registration
    @product = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to root_path
    else
      redirect_to action: :show
    end
  end
  
  private
  def product_params
    params.require(:product).permit(:arrival, :successful_bid, :product_name, :product_price, :stock, :unit_price, :shipping_fee, :total_price)
  end
end
