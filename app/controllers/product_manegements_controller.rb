class ProductManegementsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]
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
  end

  def edit
    
  end

  def update
    if @product.update(product_params)
      redirect_to edit_product_manegement_path(@product), notice: '情報を編集しました'
    else
      redirect_to root_path
    end

    # if @product.user_id == current_user.id
    #   @product.update(product_params)
    #   redirect_to product_path(@product)
    # else
    #   redirect_to root_path
    # end
  end
  
  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to registration_product_manegements_path
    else
      redirect_to action: :show
    end
  end
  
  private
  def product_params
    params.require(:product).permit(:arrival, :successful_bid, :product_name, :product_price, :stock, :unit_price, :shipping_fee, :total_price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
